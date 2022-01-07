; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_jedec_probe.c_jedec_read_mfr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_jedec_probe.c_jedec_read_mfr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }
%struct.cfi_private = type { i32 }
%struct.TYPE_3__ = type { i64* }

@CFI_MFR_CONTINUATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.map_info*, i64, %struct.cfi_private*)* @jedec_read_mfr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jedec_read_mfr(%struct.map_info* %0, i64 %1, %struct.cfi_private* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cfi_private*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.cfi_private* %2, %struct.cfi_private** %7, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %45, %3
  %14 = load i32, i32* %10, align 4
  %15 = shl i32 %14, 8
  %16 = add nsw i32 0, %15
  %17 = sext i32 %16 to i64
  %18 = load %struct.map_info*, %struct.map_info** %5, align 8
  %19 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %20 = call i64 @cfi_build_cmd_addr(i64 %17, %struct.map_info* %18, %struct.cfi_private* %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %22 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 8
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.map_info*, %struct.map_info** %5, align 8
  %30 = getelementptr inbounds %struct.map_info, %struct.map_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  br label %61

34:                                               ; preds = %13
  %35 = load %struct.map_info*, %struct.map_info** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i64* @map_read(%struct.map_info* %35, i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64* %39, i64** %40, align 8
  %41 = bitcast %struct.TYPE_3__* %8 to i8*
  %42 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* @CFI_MFR_CONTINUATION, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %13, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = and i64 %58, %59
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %54, %33
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i64 @cfi_build_cmd_addr(i64, %struct.map_info*, %struct.cfi_private*) #1

declare dso_local i64* @map_read(%struct.map_info*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
