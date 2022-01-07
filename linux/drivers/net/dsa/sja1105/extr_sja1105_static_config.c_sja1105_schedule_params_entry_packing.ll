; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_schedule_params_entry_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_schedule_params_entry_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_schedule_params_entry = type { i32* }

@SJA1105_SIZE_SCHEDULE_PARAMS_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32)* @sja1105_schedule_params_entry_packing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sja1105_schedule_params_entry_packing(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sja1105_schedule_params_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @SJA1105_SIZE_SCHEDULE_PARAMS_ENTRY, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sja1105_schedule_params_entry*
  store %struct.sja1105_schedule_params_entry* %13, %struct.sja1105_schedule_params_entry** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 16, i32* %9, align 4
  br label %14

14:                                               ; preds = %33, %3
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %8, align 8
  %20 = getelementptr inbounds %struct.sja1105_schedule_params_entry, %struct.sja1105_schedule_params_entry* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 9
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 0
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sja1105_packing(i8* %18, i32* %24, i32 %26, i64 %29, i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 10
  store i32 %37, i32* %9, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load i64, i64* %7, align 8
  ret i64 %39
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
