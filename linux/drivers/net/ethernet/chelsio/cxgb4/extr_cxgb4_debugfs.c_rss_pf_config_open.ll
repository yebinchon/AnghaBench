; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_rss_pf_config_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_rss_pf_config_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.file = type { i32 }
%struct.seq_tab = type { i64 }
%struct.rss_pf_conf = type { i32, i8*, i8* }

@rss_pf_config_show = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @rss_pf_config_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rss_pf_config_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.seq_tab*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rss_pf_conf*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %6, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load i32, i32* @rss_pf_config_show, align 4
  %17 = call %struct.seq_tab* @seq_open_tab(%struct.file* %15, i32 8, i32 24, i32 1, i32 %16)
  store %struct.seq_tab* %17, %struct.seq_tab** %7, align 8
  %18 = load %struct.seq_tab*, %struct.seq_tab** %7, align 8
  %19 = icmp ne %struct.seq_tab* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %2
  %24 = load %struct.seq_tab*, %struct.seq_tab** %7, align 8
  %25 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.rss_pf_conf*
  store %struct.rss_pf_conf* %27, %struct.rss_pf_conf** %10, align 8
  %28 = load %struct.adapter*, %struct.adapter** %6, align 8
  %29 = call i8* @t4_read_rss_pf_map(%struct.adapter* %28, i32 1)
  store i8* %29, i8** %8, align 8
  %30 = load %struct.adapter*, %struct.adapter** %6, align 8
  %31 = call i8* @t4_read_rss_pf_mask(%struct.adapter* %30, i32 1)
  store i8* %31, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %56, %23
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.rss_pf_conf*, %struct.rss_pf_conf** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %37, i64 %39
  %41 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %40, i32 0, i32 2
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.rss_pf_conf*, %struct.rss_pf_conf** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %43, i64 %45
  %47 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %46, i32 0, i32 1
  store i8* %42, i8** %47, align 8
  %48 = load %struct.adapter*, %struct.adapter** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.rss_pf_conf*, %struct.rss_pf_conf** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %50, i64 %52
  %54 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %53, i32 0, i32 0
  %55 = call i32 @t4_read_rss_pf_config(%struct.adapter* %48, i32 %49, i32* %54, i32 1)
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %32

59:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.seq_tab* @seq_open_tab(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i8* @t4_read_rss_pf_map(%struct.adapter*, i32) #1

declare dso_local i8* @t4_read_rss_pf_mask(%struct.adapter*, i32) #1

declare dso_local i32 @t4_read_rss_pf_config(%struct.adapter*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
