; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_geth_resize_freeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_geth_resize_freeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_ethernet_port = type { i32, %struct.net_device*, %struct.gemini_ethernet* }
%struct.net_device = type { i64 }
%struct.gemini_ethernet = type { i32, i32, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.TYPE_3__ = type { %struct.net_device* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"port %d size: %d order %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"set shared queue to size %d order %d\0A\00", align 1
@GLOBAL_INTERRUPT_ENABLE_4_REG = common dso_local global i64 0, align 8
@SWFQ_EMPTY_INT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gemini_ethernet_port*)* @geth_resize_freeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geth_resize_freeq(%struct.gemini_ethernet_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gemini_ethernet_port*, align 8
  %4 = alloca %struct.gemini_ethernet*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.gemini_ethernet_port*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gemini_ethernet_port* %0, %struct.gemini_ethernet_port** %3, align 8
  %13 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %14 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %13, i32 0, i32 2
  %15 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %14, align 8
  store %struct.gemini_ethernet* %15, %struct.gemini_ethernet** %4, align 8
  %16 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %17 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %5, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %25 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %24, i32 0, i32 6
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %7, align 8
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %31 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %30, i32 0, i32 5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %7, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = call i64 @netif_running(%struct.net_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %161

45:                                               ; preds = %38, %35
  %46 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %47 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = shl i32 1, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %57 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netdev_dbg(%struct.net_device* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %54, i32 %55, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %7, align 8
  %61 = icmp ne %struct.net_device* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %45
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %63)
  store %struct.gemini_ethernet_port* %64, %struct.gemini_ethernet_port** %6, align 8
  %65 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %66 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  %69 = shl i32 1, %68
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %77 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  %80 = shl i32 1, %79
  %81 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %82 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @netdev_dbg(%struct.net_device* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %75, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %62, %45
  %86 = load i32, i32* %8, align 4
  %87 = sub i32 %86, 1
  %88 = call i64 @ilog2(i32 %87)
  %89 = add nsw i64 %88, 1
  %90 = call i32 @min(i32 15, i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %92 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dev_dbg(i32 %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %98 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %161

103:                                              ; preds = %85
  %104 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %105 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %104, i32 0, i32 1
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %109 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_4_REG, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @readl(i64 %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* @SWFQ_EMPTY_INT_BIT, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %11, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %120 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_4_REG, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel(i32 %118, i64 %123)
  %125 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %126 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %125, i32 0, i32 1
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  %129 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %130 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %103
  %134 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %135 = call i32 @geth_cleanup_freeq(%struct.gemini_ethernet* %134)
  br label %136

136:                                              ; preds = %133, %103
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %139 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %141 = call i32 @geth_setup_freeq(%struct.gemini_ethernet* %140)
  store i32 %141, i32* %12, align 4
  %142 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %143 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %142, i32 0, i32 1
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @spin_lock_irqsave(i32* %143, i64 %144)
  %146 = load i32, i32* @SWFQ_EMPTY_INT_BIT, align 4
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %151 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_4_REG, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  %156 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %157 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %156, i32 0, i32 1
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %136, %102, %42
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i64, i32, i32) #1

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @geth_cleanup_freeq(%struct.gemini_ethernet*) #1

declare dso_local i32 @geth_setup_freeq(%struct.gemini_ethernet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
