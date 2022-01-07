; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32*, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@FLAG_MPI = common dso_local global i32 0, align 4
@EV_TXEXC = common dso_local global i32 0, align 4
@FLAG_PENDING_XMIT = common dso_local global i32 0, align 4
@EVACK = common dso_local global i32 0, align 4
@EV_TX = common dso_local global i32 0, align 4
@EV_TXCPY = common dso_local global i32 0, align 4
@TXCOMPLFID = common dso_local global i32 0, align 4
@MAX_FIDS = common dso_local global i32 0, align 4
@FLAG_PENDING_XMIT11 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unallocated FID was used to xmit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*, i32)* @airo_handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_handle_tx(%struct.airo_info* %0, i32 %1) #0 {
  %3 = alloca %struct.airo_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.airo_info* %0, %struct.airo_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %9 = load i32, i32* @FLAG_MPI, align 4
  %10 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %11 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %10, i32 0, i32 3
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EV_TXEXC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %21 = call i32 @get_tx_error(%struct.airo_info* %20, i32 -1)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %24 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %23, i32 0, i32 4
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %28 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %27, i32 0, i32 5
  %29 = call i32 @skb_queue_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %33 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %32, i32 0, i32 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %37 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @mpi_send_packet(%struct.TYPE_3__* %38)
  br label %53

40:                                               ; preds = %22
  %41 = load i32, i32* @FLAG_PENDING_XMIT, align 4
  %42 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %43 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %42, i32 0, i32 3
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  %45 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %46 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %45, i32 0, i32 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %50 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = call i32 @netif_wake_queue(%struct.TYPE_3__* %51)
  br label %53

53:                                               ; preds = %40, %31
  %54 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %55 = load i32, i32* @EVACK, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @EV_TX, align 4
  %58 = load i32, i32* @EV_TXCPY, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @EV_TXEXC, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %56, %61
  %63 = call i32 @OUT4500(%struct.airo_info* %54, i32 %55, i32 %62)
  br label %164

64:                                               ; preds = %2
  %65 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %66 = load i32, i32* @TXCOMPLFID, align 4
  %67 = call i32 @IN4500(%struct.airo_info* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %86, %64
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MAX_FIDS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %74 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 65535
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %72
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %68

89:                                               ; preds = %68
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %147

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @EV_TXEXC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @get_tx_error(%struct.airo_info* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %92
  %102 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %103 = load i32, i32* @EVACK, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @EV_TX, align 4
  %106 = load i32, i32* @EV_TXEXC, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = call i32 @OUT4500(%struct.airo_info* %102, i32 %103, i32 %108)
  %110 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %111 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 65535
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @MAX_FIDS, align 4
  %120 = sdiv i32 %119, 2
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %101
  %123 = load i32, i32* @FLAG_PENDING_XMIT, align 4
  %124 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %125 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %124, i32 0, i32 3
  %126 = call i64 @test_bit(i32 %123, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %130 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = call i32 @netif_wake_queue(%struct.TYPE_3__* %131)
  br label %133

133:                                              ; preds = %128, %122
  br label %146

134:                                              ; preds = %101
  %135 = load i32, i32* @FLAG_PENDING_XMIT11, align 4
  %136 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %137 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %136, i32 0, i32 3
  %138 = call i64 @test_bit(i32 %135, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %134
  %141 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %142 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %141, i32 0, i32 2
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = call i32 @netif_wake_queue(%struct.TYPE_3__* %143)
  br label %145

145:                                              ; preds = %140, %134
  br label %146

146:                                              ; preds = %145, %133
  br label %164

147:                                              ; preds = %89
  %148 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %149 = load i32, i32* @EVACK, align 4
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @EV_TX, align 4
  %152 = load i32, i32* @EV_TXCPY, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @EV_TXEXC, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %150, %155
  %157 = call i32 @OUT4500(%struct.airo_info* %148, i32 %149, i32 %156)
  %158 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %159 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %158, i32 0, i32 1
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @airo_print_err(i32 %162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %164

164:                                              ; preds = %53, %147, %146
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @get_tx_error(%struct.airo_info*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mpi_send_packet(%struct.TYPE_3__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_3__*) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @airo_print_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
