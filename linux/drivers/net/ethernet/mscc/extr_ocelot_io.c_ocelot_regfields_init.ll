; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_io.c_ocelot_regfields_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_io.c_ocelot_regfields_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i64**, i32*, i32*, i32 }
%struct.reg_field = type { i64, i32, i32 }

@REGFIELD_MAX = common dso_local global i32 0, align 4
@TARGET_OFFSET = common dso_local global i64 0, align 8
@REG_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocelot_regfields_init(%struct.ocelot* %0, %struct.reg_field* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocelot*, align 8
  %5 = alloca %struct.reg_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.reg_field, align 8
  %9 = alloca i64, align 8
  store %struct.ocelot* %0, %struct.ocelot** %4, align 8
  store %struct.reg_field* %1, %struct.reg_field** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %100, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @REGFIELD_MAX, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %103

14:                                               ; preds = %10
  %15 = bitcast %struct.reg_field* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %16, i64 %18
  %20 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %100

25:                                               ; preds = %14
  %26 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %26, i64 %28
  %30 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TARGET_OFFSET, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %7, align 8
  %34 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %35 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %34, i32 0, i32 0
  %36 = load i64**, i64*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64*, i64** %36, i64 %37
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @REG_MASK, align 8
  %42 = and i64 %40, %41
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %8, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %46, i64 %48
  %50 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %8, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %53, i64 %55
  %57 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %8, i32 0, i32 1
  store i32 %58, i32* %59, align 8
  %60 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %61 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %64 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = bitcast %struct.reg_field* %8 to { i64, i64 }*
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @devm_regmap_field_alloc(i32 %62, i32 %68, i64 %71, i64 %73)
  %75 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %76 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %82 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %25
  %91 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %92 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PTR_ERR(i32 %97)
  store i32 %98, i32* %3, align 4
  br label %104

99:                                               ; preds = %25
  br label %100

100:                                              ; preds = %99, %24
  %101 = load i32, i32* %6, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %10

103:                                              ; preds = %10
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @devm_regmap_field_alloc(i32, i32, i64, i64) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
