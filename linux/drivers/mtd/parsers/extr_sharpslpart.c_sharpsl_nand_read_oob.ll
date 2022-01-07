; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_oob_ops = type { i64, i64, i32*, i32 }

@MTD_OPS_PLACE_OOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i32*)* @sharpsl_nand_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharpsl_nand_read_oob(%struct.mtd_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mtd_oob_ops, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = bitcast %struct.mtd_oob_ops* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = load i32, i32* @MTD_OPS_PLACE_OOB, align 4
  %12 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 2
  store i32* %17, i32** %18, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mtd_read_oob(%struct.mtd_info* %19, i32 %20, %struct.mtd_oob_ops* %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %3
  store i32 -1, i32* %4, align 4
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mtd_read_oob(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
