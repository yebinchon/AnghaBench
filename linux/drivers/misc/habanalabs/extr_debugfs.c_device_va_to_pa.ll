; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_device_va_to_pa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_device_va_to_pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__*, %struct.hl_ctx* }
%struct.TYPE_2__ = type { i64 (%struct.hl_device*, i64)* }
%struct.hl_ctx = type { i32 }

@HOP4_MASK = common dso_local global i64 0, align 8
@OFFSET_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"no ctx available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i64 0, align 8
@LAST_MASK = common dso_local global i64 0, align 8
@PAGE_PRESENT_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"virt addr 0x%llx is not mapped to phys addr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i64, i64*)* @device_va_to_pa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_va_to_pa(%struct.hl_device* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hl_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 2
  %16 = load %struct.hl_ctx*, %struct.hl_ctx** %15, align 8
  store %struct.hl_ctx* %16, %struct.hl_ctx** %8, align 8
  %17 = load i64, i64* @HOP4_MASK, align 8
  %18 = load i64, i64* @OFFSET_MASK, align 8
  %19 = or i64 %17, %18
  store i64 %19, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %21 = icmp ne %struct.hl_ctx* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %24 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %158

29:                                               ; preds = %3
  %30 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %34 = call i64 @get_hop0_addr(%struct.hl_ctx* %33)
  store i64 %34, i64* %9, align 8
  %35 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @get_hop0_pte_addr(%struct.hl_ctx* %35, i64 %36, i64 %37)
  store i64 %38, i64* %10, align 8
  %39 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %40 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %42, align 8
  %44 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 %43(%struct.hl_device* %44, i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @get_next_hop_addr(i64 %47)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @ULLONG_MAX, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %29
  br label %145

53:                                               ; preds = %29
  %54 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @get_hop1_pte_addr(%struct.hl_ctx* %54, i64 %55, i64 %56)
  store i64 %57, i64* %10, align 8
  %58 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %61, align 8
  %63 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i64 %62(%struct.hl_device* %63, i64 %64)
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @get_next_hop_addr(i64 %66)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @ULLONG_MAX, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %145

72:                                               ; preds = %53
  %73 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @get_hop2_pte_addr(%struct.hl_ctx* %73, i64 %74, i64 %75)
  store i64 %76, i64* %10, align 8
  %77 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %78 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %80, align 8
  %82 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i64 %81(%struct.hl_device* %82, i64 %83)
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @get_next_hop_addr(i64 %85)
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @ULLONG_MAX, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  br label %145

91:                                               ; preds = %72
  %92 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @get_hop3_pte_addr(%struct.hl_ctx* %92, i64 %93, i64 %94)
  store i64 %95, i64* %10, align 8
  %96 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %97 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %99, align 8
  %101 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i64 %100(%struct.hl_device* %101, i64 %102)
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @LAST_MASK, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %129, label %108

108:                                              ; preds = %91
  %109 = load i64, i64* %11, align 8
  %110 = call i64 @get_next_hop_addr(i64 %109)
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @ULLONG_MAX, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %145

115:                                              ; preds = %108
  %116 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i64 @get_hop4_pte_addr(%struct.hl_ctx* %116, i64 %117, i64 %118)
  store i64 %119, i64* %10, align 8
  %120 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %121 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %123, align 8
  %125 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %126 = load i64, i64* %10, align 8
  %127 = call i64 %124(%struct.hl_device* %125, i64 %126)
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* @OFFSET_MASK, align 8
  store i64 %128, i64* %12, align 8
  br label %129

129:                                              ; preds = %115, %91
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  br label %145

135:                                              ; preds = %129
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = xor i64 %137, -1
  %139 = and i64 %136, %138
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* %12, align 8
  %142 = and i64 %140, %141
  %143 = or i64 %139, %142
  %144 = load i64*, i64** %7, align 8
  store i64 %143, i64* %144, align 8
  br label %153

145:                                              ; preds = %134, %114, %90, %71, %52
  %146 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %147 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %6, align 8
  %150 = call i32 (i32, i8*, ...) @dev_err(i32 %148, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %145, %135
  %154 = load %struct.hl_ctx*, %struct.hl_ctx** %8, align 8
  %155 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %153, %22
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @get_hop0_addr(%struct.hl_ctx*) #1

declare dso_local i64 @get_hop0_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_next_hop_addr(i64) #1

declare dso_local i64 @get_hop1_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop2_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop3_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop4_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
