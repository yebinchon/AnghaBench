; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.ravb_private = type { i64, %struct.net_device_stats* }

@RAVB_BE = common dso_local global i64 0, align 8
@RAVB_NC = common dso_local global i64 0, align 8
@RCAR_GEN3 = common dso_local global i64 0, align 8
@TROCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @ravb_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @ravb_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ravb_private*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ravb_private* %8, %struct.ravb_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  store %struct.net_device_stats* %10, %struct.net_device_stats** %4, align 8
  %11 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %12 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %11, i32 0, i32 1
  %13 = load %struct.net_device_stats*, %struct.net_device_stats** %12, align 8
  %14 = load i64, i64* @RAVB_BE, align 8
  %15 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %13, i64 %14
  store %struct.net_device_stats* %15, %struct.net_device_stats** %5, align 8
  %16 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %17 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %16, i32 0, i32 1
  %18 = load %struct.net_device_stats*, %struct.net_device_stats** %17, align 8
  %19 = load i64, i64* @RAVB_NC, align 8
  %20 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %18, i64 %19
  store %struct.net_device_stats* %20, %struct.net_device_stats** %6, align 8
  %21 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %22 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RCAR_GEN3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @TROCR, align 4
  %29 = call i64 @ravb_read(%struct.net_device* %27, i32 %28)
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i32, i32* @TROCR, align 4
  %38 = call i32 @ravb_write(%struct.net_device* %36, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %26, %1
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 10
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %44 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %43, i32 0, i32 10
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %48 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %47, i32 0, i32 10
  store i64 %46, i64* %48, align 8
  %49 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %50 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %53 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %52, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %57 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %56, i32 0, i32 9
  store i64 %55, i64* %57, align 8
  %58 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %59 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %62 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %66 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %65, i32 0, i32 8
  store i64 %64, i64* %66, align 8
  %67 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %68 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %71 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %75 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %74, i32 0, i32 7
  store i64 %73, i64* %75, align 8
  %76 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %77 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %80 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %84 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %83, i32 0, i32 6
  store i64 %82, i64* %84, align 8
  %85 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %86 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %89 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %93 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %92, i32 0, i32 5
  store i64 %91, i64* %93, align 8
  %94 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %95 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %98 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %102 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %104 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %107 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %111 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %113 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %116 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %120 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  %121 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %122 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %125 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %129 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %131 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %134 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %138 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %139
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ravb_read(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
