; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdsuper.c_mtd_get_sb_by_nr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdsuper.c_mtd_get_sb_by_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32 }
%struct.super_block = type opaque
%struct.mtd_info = type { i32 }
%struct.super_block.0 = type opaque

@.str = private unnamed_addr constant [43 x i8] c"MTDSB: Device #%u doesn't appear to exist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, i32, i32 (%struct.super_block*, %struct.fs_context*)*)* @mtd_get_sb_by_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_get_sb_by_nr(%struct.fs_context* %0, i32 %1, i32 (%struct.super_block*, %struct.fs_context*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.super_block*, %struct.fs_context*)*, align 8
  %8 = alloca %struct.mtd_info*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.super_block*, %struct.fs_context*)* %2, i32 (%struct.super_block*, %struct.fs_context*)** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.mtd_info* @get_mtd_device(i32* null, i32 %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %8, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %12 = call i64 @IS_ERR(%struct.mtd_info* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @errorf(%struct.fs_context* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.mtd_info* %18)
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %23 = load i32 (%struct.super_block*, %struct.fs_context*)*, i32 (%struct.super_block*, %struct.fs_context*)** %7, align 8
  %24 = bitcast i32 (%struct.super_block*, %struct.fs_context*)* %23 to i32 (%struct.super_block.0*, %struct.fs_context*)*
  %25 = call i32 @mtd_get_sb(%struct.fs_context* %21, %struct.mtd_info* %22, i32 (%struct.super_block.0*, %struct.fs_context*)* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.mtd_info* @get_mtd_device(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mtd_info*) #1

declare dso_local i32 @errorf(%struct.fs_context*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.mtd_info*) #1

declare dso_local i32 @mtd_get_sb(%struct.fs_context*, %struct.mtd_info*, i32 (%struct.super_block.0*, %struct.fs_context*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
