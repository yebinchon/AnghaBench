; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, %struct.flchip* }
%struct.flchip = type { i64, i32, i32 }

@FL_PM_SUSPENDED = common dso_local global i64 0, align 8
@FL_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @cfi_staa_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_staa_resume(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.cfi_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flchip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.map_info*, %struct.map_info** %8, align 8
  store %struct.map_info* %9, %struct.map_info** %3, align 8
  %10 = load %struct.map_info*, %struct.map_info** %3, align 8
  %11 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 0
  %12 = load %struct.cfi_private*, %struct.cfi_private** %11, align 8
  store %struct.cfi_private* %12, %struct.cfi_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %48, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %16 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %13
  %20 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %21 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %20, i32 0, i32 1
  %22 = load %struct.flchip*, %struct.flchip** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.flchip, %struct.flchip* %22, i64 %24
  store %struct.flchip* %25, %struct.flchip** %6, align 8
  %26 = load %struct.flchip*, %struct.flchip** %6, align 8
  %27 = getelementptr inbounds %struct.flchip, %struct.flchip* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.flchip*, %struct.flchip** %6, align 8
  %30 = getelementptr inbounds %struct.flchip, %struct.flchip* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FL_PM_SUSPENDED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = load %struct.map_info*, %struct.map_info** %3, align 8
  %36 = call i32 @CMD(i32 255)
  %37 = call i32 @map_write(%struct.map_info* %35, i32 %36, i32 0)
  %38 = load i64, i64* @FL_READY, align 8
  %39 = load %struct.flchip*, %struct.flchip** %6, align 8
  %40 = getelementptr inbounds %struct.flchip, %struct.flchip* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.flchip*, %struct.flchip** %6, align 8
  %42 = getelementptr inbounds %struct.flchip, %struct.flchip* %41, i32 0, i32 2
  %43 = call i32 @wake_up(i32* %42)
  br label %44

44:                                               ; preds = %34, %19
  %45 = load %struct.flchip*, %struct.flchip** %6, align 8
  %46 = getelementptr inbounds %struct.flchip, %struct.flchip* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %13

51:                                               ; preds = %13
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @map_write(%struct.map_info*, i32, i32) #1

declare dso_local i32 @CMD(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
