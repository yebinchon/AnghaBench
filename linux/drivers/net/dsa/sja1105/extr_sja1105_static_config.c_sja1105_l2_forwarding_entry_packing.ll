; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_l2_forwarding_entry_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_l2_forwarding_entry_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_l2_forwarding_entry = type { i32*, i32, i32, i32 }

@SJA1105_SIZE_L2_FORWARDING_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sja1105_l2_forwarding_entry_packing(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sja1105_l2_forwarding_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @SJA1105_SIZE_L2_FORWARDING_ENTRY, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sja1105_l2_forwarding_entry*
  store %struct.sja1105_l2_forwarding_entry* %13, %struct.sja1105_l2_forwarding_entry** %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %8, align 8
  %16 = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, %struct.sja1105_l2_forwarding_entry* %15, i32 0, i32 3
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @sja1105_packing(i8* %14, i32* %16, i32 63, i32 59, i64 %17, i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %8, align 8
  %22 = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, %struct.sja1105_l2_forwarding_entry* %21, i32 0, i32 2
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @sja1105_packing(i8* %20, i32* %22, i32 58, i32 54, i64 %23, i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %8, align 8
  %28 = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, %struct.sja1105_l2_forwarding_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sja1105_packing(i8* %26, i32* %28, i32 53, i32 49, i64 %29, i32 %30)
  store i32 0, i32* %10, align 4
  store i32 25, i32* %9, align 4
  br label %32

32:                                               ; preds = %50, %3
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %8, align 8
  %38 = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, %struct.sja1105_l2_forwarding_entry* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 2
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 0
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @sja1105_packing(i8* %36, i32* %42, i32 %44, i32 %46, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 3
  store i32 %54, i32* %9, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load i64, i64* %7, align 8
  ret i64 %56
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
