; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_rss_vf_config_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_rss_vf_config_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.seq_tab = type { i64 }
%struct.rss_vf_conf = type { i32, i32 }

@rss_vf_config_show = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @rss_vf_config_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rss_vf_config_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.seq_tab*, align 8
  %8 = alloca %struct.rss_vf_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @rss_vf_config_show, align 4
  %22 = call %struct.seq_tab* @seq_open_tab(%struct.file* %19, i32 %20, i32 8, i32 1, i32 %21)
  store %struct.seq_tab* %22, %struct.seq_tab** %7, align 8
  %23 = load %struct.seq_tab*, %struct.seq_tab** %7, align 8
  %24 = icmp ne %struct.seq_tab* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %2
  %29 = load %struct.seq_tab*, %struct.seq_tab** %7, align 8
  %30 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.rss_vf_conf*
  store %struct.rss_vf_conf* %32, %struct.rss_vf_conf** %8, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %51, %28
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load %struct.adapter*, %struct.adapter** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %40, i64 %42
  %44 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %43, i32 0, i32 1
  %45 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %45, i64 %47
  %49 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %48, i32 0, i32 0
  %50 = call i32 @t4_read_rss_vf_config(%struct.adapter* %38, i32 %39, i32* %44, i32* %49, i32 1)
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %33

54:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %25
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.seq_tab* @seq_open_tab(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i32 @t4_read_rss_vf_config(%struct.adapter*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
