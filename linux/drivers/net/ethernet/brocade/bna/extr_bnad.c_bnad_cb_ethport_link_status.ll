; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cb_ethport_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cb_ethport_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.bna_tcb** }
%struct.bna_tcb = type { i32, i32 }

@BNA_LINK_UP = common dso_local global i32 0, align 4
@BNA_CEE_UP = common dso_local global i32 0, align 4
@BNAD_RF_CEE_RUNNING = common dso_local global i32 0, align 4
@cee_toggle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@link_toggle = common dso_local global i32 0, align 4
@BNAD_TXQ_TX_STARTED = common dso_local global i32 0, align 4
@netif_queue_wakeup = common dso_local global i32 0, align 4
@netif_queue_stop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_cb_ethport_link_status(%struct.bnad* %0, i32 %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bna_tcb*, align 8
  %9 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BNA_LINK_UP, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BNA_CEE_UP, align 4
  %16 = icmp eq i32 %14, %15
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ true, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @BNA_CEE_UP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i32, i32* @BNAD_RF_CEE_RUNNING, align 4
  %25 = load %struct.bnad*, %struct.bnad** %3, align 8
  %26 = getelementptr inbounds %struct.bnad, %struct.bnad* %25, i32 0, i32 4
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load %struct.bnad*, %struct.bnad** %3, align 8
  %31 = load i32, i32* @cee_toggle, align 4
  %32 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* @BNAD_RF_CEE_RUNNING, align 4
  %35 = load %struct.bnad*, %struct.bnad** %3, align 8
  %36 = getelementptr inbounds %struct.bnad, %struct.bnad* %35, i32 0, i32 4
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  br label %53

38:                                               ; preds = %17
  %39 = load i32, i32* @BNAD_RF_CEE_RUNNING, align 4
  %40 = load %struct.bnad*, %struct.bnad** %3, align 8
  %41 = getelementptr inbounds %struct.bnad, %struct.bnad* %40, i32 0, i32 4
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.bnad*, %struct.bnad** %3, align 8
  %46 = load i32, i32* @cee_toggle, align 4
  %47 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* @BNAD_RF_CEE_RUNNING, align 4
  %50 = load %struct.bnad*, %struct.bnad** %3, align 8
  %51 = getelementptr inbounds %struct.bnad, %struct.bnad* %50, i32 0, i32 4
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %33
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %138

56:                                               ; preds = %53
  %57 = load %struct.bnad*, %struct.bnad** %3, align 8
  %58 = getelementptr inbounds %struct.bnad, %struct.bnad* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @netif_carrier_ok(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %137, label %62

62:                                               ; preds = %56
  %63 = load %struct.bnad*, %struct.bnad** %3, align 8
  %64 = getelementptr inbounds %struct.bnad, %struct.bnad* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @netdev_info(i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.bnad*, %struct.bnad** %3, align 8
  %68 = getelementptr inbounds %struct.bnad, %struct.bnad* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @netif_carrier_on(i32 %69)
  %71 = load %struct.bnad*, %struct.bnad** %3, align 8
  %72 = load i32, i32* @link_toggle, align 4
  %73 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %71, i32 %72)
  store i64 0, i64* %6, align 8
  br label %74

74:                                               ; preds = %133, %62
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.bnad*, %struct.bnad** %3, align 8
  %77 = getelementptr inbounds %struct.bnad, %struct.bnad* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %136

80:                                               ; preds = %74
  store i64 0, i64* %7, align 8
  br label %81

81:                                               ; preds = %129, %80
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.bnad*, %struct.bnad** %3, align 8
  %84 = getelementptr inbounds %struct.bnad, %struct.bnad* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %82, %85
  br i1 %86, label %87, label %132

87:                                               ; preds = %81
  %88 = load %struct.bnad*, %struct.bnad** %3, align 8
  %89 = getelementptr inbounds %struct.bnad, %struct.bnad* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.bna_tcb**, %struct.bna_tcb*** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %94, i64 %95
  %97 = load %struct.bna_tcb*, %struct.bna_tcb** %96, align 8
  store %struct.bna_tcb* %97, %struct.bna_tcb** %8, align 8
  %98 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %99 = icmp ne %struct.bna_tcb* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %87
  br label %129

101:                                              ; preds = %87
  %102 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %103 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %106 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %107 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %106, i32 0, i32 0
  %108 = call i64 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %101
  %111 = load %struct.bnad*, %struct.bnad** %3, align 8
  %112 = getelementptr inbounds %struct.bnad, %struct.bnad* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @netif_wake_subqueue(i32 %113, i32 %114)
  %116 = load %struct.bnad*, %struct.bnad** %3, align 8
  %117 = load i32, i32* @netif_queue_wakeup, align 4
  %118 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %116, i32 %117)
  br label %128

119:                                              ; preds = %101
  %120 = load %struct.bnad*, %struct.bnad** %3, align 8
  %121 = getelementptr inbounds %struct.bnad, %struct.bnad* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @netif_stop_subqueue(i32 %122, i32 %123)
  %125 = load %struct.bnad*, %struct.bnad** %3, align 8
  %126 = load i32, i32* @netif_queue_stop, align 4
  %127 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %125, i32 %126)
  br label %128

128:                                              ; preds = %119, %110
  br label %129

129:                                              ; preds = %128, %100
  %130 = load i64, i64* %7, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %7, align 8
  br label %81

132:                                              ; preds = %81
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %6, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %6, align 8
  br label %74

136:                                              ; preds = %74
  br label %137

137:                                              ; preds = %136, %56
  br label %157

138:                                              ; preds = %53
  %139 = load %struct.bnad*, %struct.bnad** %3, align 8
  %140 = getelementptr inbounds %struct.bnad, %struct.bnad* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @netif_carrier_ok(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %138
  %145 = load %struct.bnad*, %struct.bnad** %3, align 8
  %146 = getelementptr inbounds %struct.bnad, %struct.bnad* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @netdev_info(i32 %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %149 = load %struct.bnad*, %struct.bnad** %3, align 8
  %150 = getelementptr inbounds %struct.bnad, %struct.bnad* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @netif_carrier_off(i32 %151)
  %153 = load %struct.bnad*, %struct.bnad** %3, align 8
  %154 = load i32, i32* @link_toggle, align 4
  %155 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %153, i32 %154)
  br label %156

156:                                              ; preds = %144, %138
  br label %157

157:                                              ; preds = %156, %137
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_wake_subqueue(i32, i32) #1

declare dso_local i32 @netif_stop_subqueue(i32, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
