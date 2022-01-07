; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_hw_stats_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_hw_stats_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fm10k_hw_stats = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FM10K_STATS_TIMEOUT = common dso_local global i32 0, align 4
@FM10K_STATS_UR = common dso_local global i32 0, align 4
@FM10K_STATS_CA = common dso_local global i32 0, align 4
@FM10K_STATS_UM = common dso_local global i32 0, align 4
@FM10K_STATS_XEC = common dso_local global i32 0, align 4
@FM10K_STATS_VLAN_DROP = common dso_local global i32 0, align 4
@FM10K_STATS_LOOPBACK_DROP = common dso_local global i32 0, align 4
@FM10K_STATS_NODESC_DROP = common dso_local global i32 0, align 4
@FM10K_TXQCTL_ID_MASK = common dso_local global i32 0, align 4
@FM10K_STAT_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_hw_stats*)* @fm10k_update_hw_stats_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_update_hw_stats_pf(%struct.fm10k_hw* %0, %struct.fm10k_hw_stats* %1) #0 {
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca %struct.fm10k_hw_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  store %struct.fm10k_hw_stats* %1, %struct.fm10k_hw_stats** %4, align 8
  %15 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %16 = call i32 @FM10K_TXQCTL(i32 0)
  %17 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %15, i32 %16)
  store i32 %17, i32* %13, align 4
  br label %18

18:                                               ; preds = %63, %2
  %19 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %20 = load i32, i32* @FM10K_STATS_TIMEOUT, align 4
  %21 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %22 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %21, i32 0, i32 9
  %23 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %19, i32 %20, %struct.TYPE_5__* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %25 = load i32, i32* @FM10K_STATS_UR, align 4
  %26 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %27 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %26, i32 0, i32 8
  %28 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %24, i32 %25, %struct.TYPE_5__* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %30 = load i32, i32* @FM10K_STATS_CA, align 4
  %31 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %32 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %31, i32 0, i32 7
  %33 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %29, i32 %30, %struct.TYPE_5__* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %35 = load i32, i32* @FM10K_STATS_UM, align 4
  %36 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %37 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %36, i32 0, i32 6
  %38 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %34, i32 %35, %struct.TYPE_5__* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %40 = load i32, i32* @FM10K_STATS_XEC, align 4
  %41 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %42 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %41, i32 0, i32 5
  %43 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %39, i32 %40, %struct.TYPE_5__* %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %45 = load i32, i32* @FM10K_STATS_VLAN_DROP, align 4
  %46 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %47 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %46, i32 0, i32 4
  %48 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %44, i32 %45, %struct.TYPE_5__* %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %50 = load i32, i32* @FM10K_STATS_LOOPBACK_DROP, align 4
  %51 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %52 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %51, i32 0, i32 3
  %53 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %49, i32 %50, %struct.TYPE_5__* %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %55 = load i32, i32* @FM10K_STATS_NODESC_DROP, align 4
  %56 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %57 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %56, i32 0, i32 2
  %58 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %54, i32 %55, %struct.TYPE_5__* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %14, align 4
  %60 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %61 = call i32 @FM10K_TXQCTL(i32 0)
  %62 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %60, i32 %61)
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %18
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = xor i32 %64, %65
  %67 = load i32, i32* @FM10K_TXQCTL_ID_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %18, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @FM10K_TXQCTL_ID_MASK, align 4
  %72 = load i32, i32* %13, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* @FM10K_STAT_VALID, align 4
  %75 = load i32, i32* %13, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %13, align 4
  %77 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %78 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %131

82:                                               ; preds = %70
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %85 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %84, i32 0, i32 9
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %83
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %91 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %97 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %95
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %103 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %101
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %109 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %107
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %115 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %113
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %121 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %119
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %127 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %125
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %82, %70
  %132 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %133 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %132, i32 0, i32 9
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_5__* %133, i32 %134)
  %136 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %137 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %136, i32 0, i32 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_5__* %137, i32 %138)
  %140 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %141 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %140, i32 0, i32 7
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_5__* %141, i32 %142)
  %144 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %145 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %144, i32 0, i32 6
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_5__* %145, i32 %146)
  %148 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %149 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %148, i32 0, i32 5
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_5__* %149, i32 %150)
  %152 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %153 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %152, i32 0, i32 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_5__* %153, i32 %154)
  %156 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %157 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %156, i32 0, i32 3
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_5__* %157, i32 %158)
  %160 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %161 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %160, i32 0, i32 2
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_5__* %161, i32 %162)
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %166 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %168 = load %struct.fm10k_hw_stats*, %struct.fm10k_hw_stats** %4, align 8
  %169 = getelementptr inbounds %struct.fm10k_hw_stats, %struct.fm10k_hw_stats* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %172 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @fm10k_update_hw_stats_q(%struct.fm10k_hw* %167, i32 %170, i32 0, i32 %174)
  ret void
}

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_TXQCTL(i32) #1

declare dso_local i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @fm10k_update_hw_base_32b(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fm10k_update_hw_stats_q(%struct.fm10k_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
