; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_ssfdc.c_read_raw_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_ssfdc.c_read_raw_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_ops = type { i64, i32*, i32*, i64, i64, i32 }

@MTD_OPS_RAW = common dso_local global i32 0, align 4
@OOB_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i32*)* @read_raw_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_raw_oob(%struct.mtd_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mtd_oob_ops, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @MTD_OPS_RAW, align 4
  %11 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 5
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @OOB_SIZE, align 8
  %14 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 3
  store i64 %13, i64* %14, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 2
  store i32* %15, i32** %16, align 8
  %17 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @mtd_read_oob(%struct.mtd_info* %18, i32 %19, %struct.mtd_oob_ops* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OOB_SIZE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %3
  store i32 -1, i32* %4, align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @mtd_read_oob(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
