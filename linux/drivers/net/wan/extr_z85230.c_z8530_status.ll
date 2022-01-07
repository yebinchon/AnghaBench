; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_channel = type { i32, i32, i32*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@R0 = common dso_local global i32 0, align 4
@TxEOM = common dso_local global i32 0, align 4
@ERR_RES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: DCD raised\0A\00", align 1
@R3 = common dso_local global i32 0, align 4
@RxENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s: DCD lost\0A\00", align 1
@RES_EXT_INT = common dso_local global i32 0, align 4
@RES_H_IUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z8530_channel*)* @z8530_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z8530_status(%struct.z8530_channel* %0) #0 {
  %2 = alloca %struct.z8530_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.z8530_channel* %0, %struct.z8530_channel** %2, align 8
  %5 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %6 = load i32, i32* @R0, align 4
  %7 = call i32 @read_zsreg(%struct.z8530_channel* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %9 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = xor i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %15 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @TxEOM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %22 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %21, i32 0, i32 3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %29 = load i32, i32* @ERR_RES, align 4
  %30 = call i32 @write_zsctrl(%struct.z8530_channel* %28, i32 %29)
  %31 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %32 = call i32 @z8530_tx_done(%struct.z8530_channel* %31)
  br label %33

33:                                               ; preds = %20, %1
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %36 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %105

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %43 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  %48 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %49 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %48, i32 0, i32 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %55 = load i32, i32* @R3, align 4
  %56 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %57 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RxENABLE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @write_zsreg(%struct.z8530_channel* %54, i32 %55, i32 %62)
  %64 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %65 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %47
  %69 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %70 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %69, i32 0, i32 3
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = call i32 @netif_carrier_on(%struct.TYPE_7__* %71)
  br label %73

73:                                               ; preds = %68, %47
  br label %104

74:                                               ; preds = %40
  %75 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %76 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %75, i32 0, i32 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %82 = load i32, i32* @R3, align 4
  %83 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %84 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RxENABLE, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = call i32 @write_zsreg(%struct.z8530_channel* %81, i32 %82, i32 %90)
  %92 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %93 = call i32 @z8530_flush_fifo(%struct.z8530_channel* %92)
  %94 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %95 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %94, i32 0, i32 3
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = icmp ne %struct.TYPE_7__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %74
  %99 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %100 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %99, i32 0, i32 3
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = call i32 @netif_carrier_off(%struct.TYPE_7__* %101)
  br label %103

103:                                              ; preds = %98, %74
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104, %33
  %106 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %107 = load i32, i32* @RES_EXT_INT, align 4
  %108 = call i32 @write_zsctrl(%struct.z8530_channel* %106, i32 %107)
  %109 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %110 = load i32, i32* @RES_H_IUS, align 4
  %111 = call i32 @write_zsctrl(%struct.z8530_channel* %109, i32 %110)
  ret void
}

declare dso_local i32 @read_zsreg(%struct.z8530_channel*, i32) #1

declare dso_local i32 @write_zsctrl(%struct.z8530_channel*, i32) #1

declare dso_local i32 @z8530_tx_done(%struct.z8530_channel*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @write_zsreg(%struct.z8530_channel*, i32, i32) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_7__*) #1

declare dso_local i32 @z8530_flush_fifo(%struct.z8530_channel*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
