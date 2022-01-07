; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i32, i8*, %struct.tifm_dev* }
%struct.tifm_dev = type { i64 }
%struct.page = type { i32 }

@DATA_CARRY = common dso_local global i32 0, align 4
@SOCK_MMCSD_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_sd*, %struct.page*, i32, i32)* @tifm_sd_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_read_fifo(%struct.tifm_sd* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tifm_sd*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tifm_dev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tifm_sd* %0, %struct.tifm_sd** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %14 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %13, i32 0, i32 2
  %15 = load %struct.tifm_dev*, %struct.tifm_dev** %14, align 8
  store %struct.tifm_dev* %15, %struct.tifm_dev** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = call i8* @kmap_atomic(%struct.page* %16)
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %10, align 8
  %21 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %22 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DATA_CARRY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %4
  %28 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %29 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %11, align 4
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8 %32, i8* %37, align 1
  %38 = load i32, i32* @DATA_CARRY, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %41 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %27, %4
  br label %45

45:                                               ; preds = %81, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %91

49:                                               ; preds = %45
  %50 = load %struct.tifm_dev*, %struct.tifm_dev** %9, align 8
  %51 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SOCK_MMCSD_DATA, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, 255
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 %58, i8* %63, align 1
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %49
  %68 = load i32, i32* %12, align 4
  %69 = lshr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = trunc i32 %70 to i8
  %72 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %73 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 %71, i8* %75, align 1
  %76 = load i32, i32* @DATA_CARRY, align 4
  %77 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %78 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %91

81:                                               ; preds = %49
  %82 = load i32, i32* %12, align 4
  %83 = lshr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 %85, i8* %90, align 1
  br label %45

91:                                               ; preds = %67, %45
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = sub i64 0, %94
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = call i32 @kunmap_atomic(i8* %96)
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
