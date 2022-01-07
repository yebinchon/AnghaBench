; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_upd.c_ubi_start_leb_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_upd.c_ubi_start_leb_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_volume = type { i32, i64, i32, i32, i64, i32, i32 }
%struct.ubi_leb_change_req = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"start changing LEB %d:%d, %u bytes\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_start_leb_change(%struct.ubi_device* %0, %struct.ubi_volume* %1, %struct.ubi_leb_change_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_volume*, align 8
  %7 = alloca %struct.ubi_leb_change_req*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %6, align 8
  store %struct.ubi_leb_change_req* %2, %struct.ubi_leb_change_req** %7, align 8
  %8 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %9 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %14 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i1 [ false, %3 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ubi_assert(i32 %20)
  %22 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %23 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ubi_leb_change_req*, %struct.ubi_leb_change_req** %7, align 8
  %26 = getelementptr inbounds %struct.ubi_leb_change_req, %struct.ubi_leb_change_req* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ubi_leb_change_req*, %struct.ubi_leb_change_req** %7, align 8
  %29 = getelementptr inbounds %struct.ubi_leb_change_req, %struct.ubi_leb_change_req* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dbg_gen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i64 %30)
  %32 = load %struct.ubi_leb_change_req*, %struct.ubi_leb_change_req** %7, align 8
  %33 = getelementptr inbounds %struct.ubi_leb_change_req, %struct.ubi_leb_change_req* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %18
  %37 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %38 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %39 = load %struct.ubi_leb_change_req*, %struct.ubi_leb_change_req** %7, align 8
  %40 = getelementptr inbounds %struct.ubi_leb_change_req, %struct.ubi_leb_change_req* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ubi_eba_atomic_leb_change(%struct.ubi_device* %37, %struct.ubi_volume* %38, i32 %41, i32* null, i32 0)
  store i32 %42, i32* %4, align 4
  br label %77

43:                                               ; preds = %18
  %44 = load %struct.ubi_leb_change_req*, %struct.ubi_leb_change_req** %7, align 8
  %45 = getelementptr inbounds %struct.ubi_leb_change_req, %struct.ubi_leb_change_req* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %48 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %50 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %52 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.ubi_leb_change_req*, %struct.ubi_leb_change_req** %7, align 8
  %54 = getelementptr inbounds %struct.ubi_leb_change_req, %struct.ubi_leb_change_req* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %57 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ubi_leb_change_req*, %struct.ubi_leb_change_req** %7, align 8
  %59 = getelementptr inbounds %struct.ubi_leb_change_req, %struct.ubi_leb_change_req* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %63 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ALIGN(i32 %61, i32 %64)
  %66 = call i32 @vmalloc(i32 %65)
  %67 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %68 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %70 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %43
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %73, %36
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i64) #1

declare dso_local i32 @ubi_eba_atomic_leb_change(%struct.ubi_device*, %struct.ubi_volume*, i32, i32*, i32) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
