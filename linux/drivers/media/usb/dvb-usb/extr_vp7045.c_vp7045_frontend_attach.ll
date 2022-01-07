; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp7045.c_vp7045_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp7045.c_vp7045_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VENDOR_STRING_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"firmware says: %s \00", align 1
@PRODUCT_STRING_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@FW_VERSION_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"v%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @vp7045_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp7045_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca [255 x i8], align 16
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %4 = bitcast [255 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 255, i1 false)
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @VENDOR_STRING_READ, align 4
  %9 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %10 = call i32 @vp7045_usb_op(i32 %7, i32 %8, i32* null, i32 0, i8* %9, i32 20, i32 0)
  %11 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 10
  store i8 0, i8* %11, align 2
  %12 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %13 = call i32 @deb_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PRODUCT_STRING_READ, align 4
  %18 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %19 = call i32 @vp7045_usb_op(i32 %16, i32 %17, i32* null, i32 0, i8* %18, i32 20, i32 0)
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 10
  store i8 0, i8* %20, align 2
  %21 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %22 = call i32 @deb_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FW_VERSION_READ, align 4
  %27 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %28 = call i32 @vp7045_usb_op(i32 %25, i32 %26, i32* null, i32 0, i8* %27, i32 20, i32 0)
  %29 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 10
  store i8 0, i8* %29, align 2
  %30 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %31 = call i32 @deb_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @vp7045_fe_attach(i32 %34)
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vp7045_usb_op(i32, i32, i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @deb_info(i8*, i8*) #2

declare dso_local i32 @vp7045_fe_attach(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
