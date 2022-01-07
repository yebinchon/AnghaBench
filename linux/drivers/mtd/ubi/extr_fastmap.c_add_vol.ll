; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_add_vol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_add_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_ainf_volume = type { i32, i32, i64, i32, i64 }
%struct.ubi_attach_info = type { i32 }

@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"found volume (ID %i)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_ainf_volume* (%struct.ubi_attach_info*, i32, i32, i32, i64, i32)* @add_vol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_ainf_volume* @add_vol(%struct.ubi_attach_info* %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ubi_ainf_volume*, align 8
  %8 = alloca %struct.ubi_attach_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubi_ainf_volume*, align 8
  store %struct.ubi_attach_info* %0, %struct.ubi_attach_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.ubi_ainf_volume* @ubi_add_av(%struct.ubi_attach_info* %15, i32 %16)
  store %struct.ubi_ainf_volume* %17, %struct.ubi_ainf_volume** %14, align 8
  %18 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %14, align 8
  %19 = call i64 @IS_ERR(%struct.ubi_ainf_volume* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %14, align 8
  store %struct.ubi_ainf_volume* %22, %struct.ubi_ainf_volume** %7, align 8
  br label %48

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %14, align 8
  %26 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %14, align 8
  %29 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %14, align 8
  %31 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %14, align 8
  %34 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %14, align 8
  %36 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %14, align 8
  %43 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %23
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @dbg_bld(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %14, align 8
  store %struct.ubi_ainf_volume* %47, %struct.ubi_ainf_volume** %7, align 8
  br label %48

48:                                               ; preds = %44, %21
  %49 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %7, align 8
  ret %struct.ubi_ainf_volume* %49
}

declare dso_local %struct.ubi_ainf_volume* @ubi_add_av(%struct.ubi_attach_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubi_ainf_volume*) #1

declare dso_local i32 @dbg_bld(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
