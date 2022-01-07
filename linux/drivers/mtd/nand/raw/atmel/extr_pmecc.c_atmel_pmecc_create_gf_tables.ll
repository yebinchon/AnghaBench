; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_create_gf_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_create_gf_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_gf_tables = type { i8*, i8* }
%struct.atmel_pmecc_user_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PMECC_GF_DIMENSION_13 = common dso_local global i32 0, align 4
@PMECC_GF_13_PRIMITIVE_POLY = common dso_local global i32 0, align 4
@PMECC_LOOKUP_TABLE_SIZE_512 = common dso_local global i32 0, align 4
@PMECC_GF_DIMENSION_14 = common dso_local global i32 0, align 4
@PMECC_GF_14_PRIMITIVE_POLY = common dso_local global i32 0, align 4
@PMECC_LOOKUP_TABLE_SIZE_1024 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atmel_pmecc_gf_tables* (%struct.atmel_pmecc_user_req*)* @atmel_pmecc_create_gf_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atmel_pmecc_gf_tables* @atmel_pmecc_create_gf_tables(%struct.atmel_pmecc_user_req* %0) #0 {
  %2 = alloca %struct.atmel_pmecc_gf_tables*, align 8
  %3 = alloca %struct.atmel_pmecc_user_req*, align 8
  %4 = alloca %struct.atmel_pmecc_gf_tables*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atmel_pmecc_user_req* %0, %struct.atmel_pmecc_user_req** %3, align 8
  %9 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %3, align 8
  %10 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 512
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @PMECC_GF_DIMENSION_13, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @PMECC_GF_13_PRIMITIVE_POLY, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @PMECC_LOOKUP_TABLE_SIZE_512, align 4
  store i32 %17, i32* %7, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @PMECC_GF_DIMENSION_14, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @PMECC_GF_14_PRIMITIVE_POLY, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @PMECC_LOOKUP_TABLE_SIZE_1024, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %7, align 4
  %24 = mul i32 2, %23
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = add i64 16, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.atmel_pmecc_gf_tables* @kzalloc(i32 %28, i32 %29)
  store %struct.atmel_pmecc_gf_tables* %30, %struct.atmel_pmecc_gf_tables** %4, align 8
  %31 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  %32 = icmp ne %struct.atmel_pmecc_gf_tables* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.atmel_pmecc_gf_tables* @ERR_PTR(i32 %35)
  store %struct.atmel_pmecc_gf_tables* %36, %struct.atmel_pmecc_gf_tables** %2, align 8
  br label %64

37:                                               ; preds = %22
  %38 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  %39 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, %struct.atmel_pmecc_gf_tables* %38, i64 1
  %40 = bitcast %struct.atmel_pmecc_gf_tables* %39 to i8*
  %41 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  %42 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, %struct.atmel_pmecc_gf_tables* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  %44 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, %struct.atmel_pmecc_gf_tables* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  %49 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  %50 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, %struct.atmel_pmecc_gf_tables* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  %54 = call i32 @atmel_pmecc_build_gf_tables(i32 %51, i32 %52, %struct.atmel_pmecc_gf_tables* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %37
  %58 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  %59 = call i32 @kfree(%struct.atmel_pmecc_gf_tables* %58)
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.atmel_pmecc_gf_tables* @ERR_PTR(i32 %60)
  store %struct.atmel_pmecc_gf_tables* %61, %struct.atmel_pmecc_gf_tables** %2, align 8
  br label %64

62:                                               ; preds = %37
  %63 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  store %struct.atmel_pmecc_gf_tables* %63, %struct.atmel_pmecc_gf_tables** %2, align 8
  br label %64

64:                                               ; preds = %62, %57, %33
  %65 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %2, align 8
  ret %struct.atmel_pmecc_gf_tables* %65
}

declare dso_local %struct.atmel_pmecc_gf_tables* @kzalloc(i32, i32) #1

declare dso_local %struct.atmel_pmecc_gf_tables* @ERR_PTR(i32) #1

declare dso_local i32 @atmel_pmecc_build_gf_tables(i32, i32, %struct.atmel_pmecc_gf_tables*) #1

declare dso_local i32 @kfree(%struct.atmel_pmecc_gf_tables*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
