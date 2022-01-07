; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-dec/extr_ttusb_dec.c_ttusb_dec_stop_sec_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-dec/extr_ttusb_dec.c_ttusb_dec_stop_sec_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ttusb_dec* }
%struct.ttusb_dec = type { i32, i32 }
%struct.filter_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @ttusb_dec_stop_sec_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb_dec_stop_sec_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca %struct.dvb_demux_feed*, align 8
  %3 = alloca %struct.ttusb_dec*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca %struct.filter_info*, align 8
  %6 = alloca i64, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %2, align 8
  %7 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ttusb_dec*, %struct.ttusb_dec** %10, align 8
  store %struct.ttusb_dec* %11, %struct.ttusb_dec** %3, align 8
  %12 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.filter_info*
  store %struct.filter_info* %16, %struct.filter_info** %5, align 8
  %17 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %18 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %22 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %21, i32 0, i32 1
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %26 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %25, i32 0, i32 1
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %29 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %28, i32 0, i32 1
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %33 = call i32 @kfree(%struct.filter_info* %32)
  %34 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %36 = call i32 @ttusb_dec_send_command(%struct.ttusb_dec* %34, i32 98, i32 8, i32* %35, i32* null, i32* null)
  %37 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %38 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %42 = call i32 @ttusb_dec_stop_iso_xfer(%struct.ttusb_dec* %41)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @kfree(%struct.filter_info*) #2

declare dso_local i32 @ttusb_dec_send_command(%struct.ttusb_dec*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @ttusb_dec_stop_iso_xfer(%struct.ttusb_dec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
