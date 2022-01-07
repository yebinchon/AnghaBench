; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_upd.c_write_leb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_upd.c_write_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_volume = type { i64, i32 }

@UBI_DYNAMIC_VOLUME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"all %d bytes contain 0xFF - skip\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_volume*, i32, i8*, i32, i32)* @write_leb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_leb(%struct.ubi_device* %0, %struct.ubi_volume* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_device*, align 8
  %9 = alloca %struct.ubi_volume*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %8, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %17 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UBI_DYNAMIC_VOLUME, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ALIGN(i32 %22, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %27, i64 %29
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %31, %32
  %34 = call i32 @memset(i8* %30, i32 255, i32 %33)
  %35 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @ubi_calc_data_len(%struct.ubi_device* %35, i8* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %21
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @dbg_gen(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %7, align 4
  br label %71

44:                                               ; preds = %21
  %45 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %46 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @ubi_eba_write_leb(%struct.ubi_device* %45, %struct.ubi_volume* %46, i32 %47, i8* %48, i32 0, i32 %49)
  store i32 %50, i32* %14, align 4
  br label %69

51:                                               ; preds = %6
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %57 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @memset(i8* %55, i32 0, i32 %60)
  %62 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %63 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @ubi_eba_write_leb_st(%struct.ubi_device* %62, %struct.ubi_volume* %63, i32 %64, i8* %65, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %51, %44
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %41
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ubi_calc_data_len(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @dbg_gen(i8*, i32) #1

declare dso_local i32 @ubi_eba_write_leb(%struct.ubi_device*, %struct.ubi_volume*, i32, i8*, i32, i32) #1

declare dso_local i32 @ubi_eba_write_leb_st(%struct.ubi_device*, %struct.ubi_volume*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
