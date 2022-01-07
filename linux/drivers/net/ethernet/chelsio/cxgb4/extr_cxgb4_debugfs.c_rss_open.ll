; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_rss_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_rss_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.file = type { i32 }
%struct.seq_tab = type { i64 }

@rss_show = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @rss_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rss_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.seq_tab*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %6, align 8
  %13 = load %struct.adapter*, %struct.adapter** %6, align 8
  %14 = call i32 @t4_chip_rss_size(%struct.adapter* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sdiv i32 %16, 8
  %18 = load i32, i32* @rss_show, align 4
  %19 = call %struct.seq_tab* @seq_open_tab(%struct.file* %15, i32 %17, i32 32, i32 0, i32 %18)
  store %struct.seq_tab* %19, %struct.seq_tab** %9, align 8
  %20 = load %struct.seq_tab*, %struct.seq_tab** %9, align 8
  %21 = icmp ne %struct.seq_tab* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.adapter*, %struct.adapter** %6, align 8
  %27 = load %struct.seq_tab*, %struct.seq_tab** %9, align 8
  %28 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @t4_read_rss(%struct.adapter* %26, i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = call i32 @seq_release_private(%struct.inode* %35, %struct.file* %36)
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @t4_chip_rss_size(%struct.adapter*) #1

declare dso_local %struct.seq_tab* @seq_open_tab(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i32 @t4_read_rss(%struct.adapter*, i32*) #1

declare dso_local i32 @seq_release_private(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
