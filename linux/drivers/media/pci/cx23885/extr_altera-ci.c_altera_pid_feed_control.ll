; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_altera_pid_feed_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_altera_pid_feed_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32 }
%struct.fpga_inode = type { %struct.fpga_internal* }
%struct.fpga_internal = type { %struct.netup_hw_pid_filter** }
%struct.netup_hw_pid_filter = type { i32 (%struct.dvb_demux_feed.0*)*, i32 (%struct.dvb_demux_feed.1*)* }
%struct.dvb_demux_feed.0 = type opaque
%struct.dvb_demux_feed.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dvb_demux_feed*, i32)* @altera_pid_feed_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_pid_feed_control(i8* %0, i32 %1, %struct.dvb_demux_feed* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_demux_feed*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fpga_inode*, align 8
  %10 = alloca %struct.fpga_internal*, align 8
  %11 = alloca %struct.netup_hw_pid_filter*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dvb_demux_feed* %2, %struct.dvb_demux_feed** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.fpga_inode* @find_dinode(i8* %12)
  store %struct.fpga_inode* %13, %struct.fpga_inode** %9, align 8
  %14 = load %struct.fpga_inode*, %struct.fpga_inode** %9, align 8
  %15 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %14, i32 0, i32 0
  %16 = load %struct.fpga_internal*, %struct.fpga_internal** %15, align 8
  store %struct.fpga_internal* %16, %struct.fpga_internal** %10, align 8
  %17 = load %struct.fpga_internal*, %struct.fpga_internal** %10, align 8
  %18 = getelementptr inbounds %struct.fpga_internal, %struct.fpga_internal* %17, i32 0, i32 0
  %19 = load %struct.netup_hw_pid_filter**, %struct.netup_hw_pid_filter*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.netup_hw_pid_filter*, %struct.netup_hw_pid_filter** %19, i64 %22
  %24 = load %struct.netup_hw_pid_filter*, %struct.netup_hw_pid_filter** %23, align 8
  store %struct.netup_hw_pid_filter* %24, %struct.netup_hw_pid_filter** %11, align 8
  %25 = load %struct.netup_hw_pid_filter*, %struct.netup_hw_pid_filter** %11, align 8
  %26 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %27 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  %33 = call i32 @altera_pid_control(%struct.netup_hw_pid_filter* %25, i32 %28, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %4
  %37 = load %struct.netup_hw_pid_filter*, %struct.netup_hw_pid_filter** %11, align 8
  %38 = getelementptr inbounds %struct.netup_hw_pid_filter, %struct.netup_hw_pid_filter* %37, i32 0, i32 1
  %39 = load i32 (%struct.dvb_demux_feed.1*)*, i32 (%struct.dvb_demux_feed.1*)** %38, align 8
  %40 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %41 = bitcast %struct.dvb_demux_feed* %40 to %struct.dvb_demux_feed.1*
  %42 = call i32 %39(%struct.dvb_demux_feed.1* %41)
  br label %50

43:                                               ; preds = %4
  %44 = load %struct.netup_hw_pid_filter*, %struct.netup_hw_pid_filter** %11, align 8
  %45 = getelementptr inbounds %struct.netup_hw_pid_filter, %struct.netup_hw_pid_filter* %44, i32 0, i32 0
  %46 = load i32 (%struct.dvb_demux_feed.0*)*, i32 (%struct.dvb_demux_feed.0*)** %45, align 8
  %47 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %48 = bitcast %struct.dvb_demux_feed* %47 to %struct.dvb_demux_feed.0*
  %49 = call i32 %46(%struct.dvb_demux_feed.0* %48)
  br label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %7, align 8
  %52 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 8192
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.netup_hw_pid_filter*, %struct.netup_hw_pid_filter** %11, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 0, i32 1
  %62 = call i32 @altera_toggle_fullts_streaming(%struct.netup_hw_pid_filter* %56, i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %55, %50
  ret i32 0
}

declare dso_local %struct.fpga_inode* @find_dinode(i8*) #1

declare dso_local i32 @altera_pid_control(%struct.netup_hw_pid_filter*, i32, i32) #1

declare dso_local i32 @altera_toggle_fullts_streaming(%struct.netup_hw_pid_filter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
