; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c___ibmvnic_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c___ibmvnic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { i32, i32, i32, i32*, %struct.TYPE_2__**, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@VNIC_OPENING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Enabling rx_scrq[%d] irq\0A\00", align 1
@VNIC_CLOSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Enabling tx_scrq[%d] irq\0A\00", align 1
@IBMVNIC_LOGICAL_LNK_UP = common dso_local global i32 0, align 4
@VNIC_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @__ibmvnic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ibmvnic_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ibmvnic_adapter* %9, %struct.ibmvnic_adapter** %4, align 8
  %10 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @VNIC_OPENING, align 4
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %17 = call i32 @replenish_pools(%struct.ibmvnic_adapter* %16)
  %18 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %19 = call i32 @ibmvnic_napi_enable(%struct.ibmvnic_adapter* %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %54, %1
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @netdev_dbg(%struct.net_device* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @VNIC_CLOSED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @enable_irq(i32 %42)
  br label %44

44:                                               ; preds = %33, %26
  %45 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %46 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @enable_scrq_irq(%struct.ibmvnic_adapter* %45, %struct.TYPE_2__* %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %20

57:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %92, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %58
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @netdev_dbg(%struct.net_device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @VNIC_CLOSED, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @enable_irq(i32 %80)
  br label %82

82:                                               ; preds = %71, %64
  %83 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %84 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %86, i64 %88
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = call i32 @enable_scrq_irq(%struct.ibmvnic_adapter* %83, %struct.TYPE_2__* %90)
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %58

95:                                               ; preds = %58
  %96 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %97 = load i32, i32* @IBMVNIC_LOGICAL_LNK_UP, align 4
  %98 = call i32 @set_link_state(%struct.ibmvnic_adapter* %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %116, %101
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %110 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @napi_disable(i32* %114)
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %102

119:                                              ; preds = %102
  %120 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %121 = call i32 @release_resources(%struct.ibmvnic_adapter* %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %153

123:                                              ; preds = %95
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = call i32 @netif_tx_start_all_queues(%struct.net_device* %124)
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @VNIC_CLOSED, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %144, %129
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %133 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %138 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call i32 @napi_schedule(i32* %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %130

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %147, %123
  %149 = load i32, i32* @VNIC_OPEN, align 4
  %150 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %151 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %148, %119
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @replenish_pools(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @ibmvnic_napi_enable(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @enable_scrq_irq(%struct.ibmvnic_adapter*, %struct.TYPE_2__*) #1

declare dso_local i32 @set_link_state(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @release_resources(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
