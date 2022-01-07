; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_dev.c_genwqe_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_dev.c_genwqe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.genwqe_file = type { %struct.genwqe_dev* }
%struct.genwqe_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @genwqe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.genwqe_file*, align 8
  %6 = alloca %struct.genwqe_dev*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.genwqe_file*
  store %struct.genwqe_file* %10, %struct.genwqe_file** %5, align 8
  %11 = load %struct.genwqe_file*, %struct.genwqe_file** %5, align 8
  %12 = getelementptr inbounds %struct.genwqe_file, %struct.genwqe_file* %11, i32 0, i32 0
  %13 = load %struct.genwqe_dev*, %struct.genwqe_dev** %12, align 8
  store %struct.genwqe_dev* %13, %struct.genwqe_dev** %6, align 8
  %14 = load %struct.genwqe_file*, %struct.genwqe_file** %5, align 8
  %15 = call i32 @genwqe_remove_mappings(%struct.genwqe_file* %14)
  %16 = load %struct.genwqe_file*, %struct.genwqe_file** %5, align 8
  %17 = call i32 @genwqe_remove_pinnings(%struct.genwqe_file* %16)
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = call i32 @genwqe_fasync(i32 -1, %struct.file* %18, i32 0)
  %20 = load %struct.genwqe_dev*, %struct.genwqe_dev** %6, align 8
  %21 = load %struct.genwqe_file*, %struct.genwqe_file** %5, align 8
  %22 = call i32 @genwqe_del_file(%struct.genwqe_dev* %20, %struct.genwqe_file* %21)
  %23 = load %struct.genwqe_file*, %struct.genwqe_file** %5, align 8
  %24 = call i32 @kfree(%struct.genwqe_file* %23)
  ret i32 0
}

declare dso_local i32 @genwqe_remove_mappings(%struct.genwqe_file*) #1

declare dso_local i32 @genwqe_remove_pinnings(%struct.genwqe_file*) #1

declare dso_local i32 @genwqe_fasync(i32, %struct.file*, i32) #1

declare dso_local i32 @genwqe_del_file(%struct.genwqe_dev*, %struct.genwqe_file*) #1

declare dso_local i32 @kfree(%struct.genwqe_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
