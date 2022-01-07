; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus-fixup.c_mei_osver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus-fixup.c_mei_osver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32 }
%struct.mkhi_msg = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mkhi_fwcaps = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mei_os_ver = type { i32 }

@MKHI_OSVER_BUF_LEN = common dso_local global i32 0, align 4
@MEI_CL_IO_TX_BLOCKING = common dso_local global i32 0, align 4
@MEI_CL_IO_TX_INTERNAL = common dso_local global i32 0, align 4
@MKHI_FWCAPS_GROUP_ID = common dso_local global i32 0, align 4
@MKHI_FWCAPS_SET_OS_VER_APP_RULE_CMD = common dso_local global i32 0, align 4
@MKHI_FEATURE_PTT = common dso_local global i32 0, align 4
@OSTYPE_LINUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl_device*)* @mei_osver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_osver(%struct.mei_cl_device* %0) #0 {
  %2 = alloca %struct.mei_cl_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mkhi_msg*, align 8
  %7 = alloca %struct.mkhi_fwcaps*, align 8
  %8 = alloca %struct.mei_os_ver*, align 8
  %9 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %2, align 8
  %10 = load i32, i32* @MKHI_OSVER_BUF_LEN, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* @MKHI_OSVER_BUF_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @MEI_CL_IO_TX_BLOCKING, align 4
  %17 = load i32, i32* @MEI_CL_IO_TX_INTERNAL, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @memset(i8* %15, i32 0, i64 %19)
  %21 = bitcast i8* %15 to %struct.mkhi_msg*
  store %struct.mkhi_msg* %21, %struct.mkhi_msg** %6, align 8
  %22 = load i32, i32* @MKHI_FWCAPS_GROUP_ID, align 4
  %23 = load %struct.mkhi_msg*, %struct.mkhi_msg** %6, align 8
  %24 = getelementptr inbounds %struct.mkhi_msg, %struct.mkhi_msg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @MKHI_FWCAPS_SET_OS_VER_APP_RULE_CMD, align 4
  %27 = load %struct.mkhi_msg*, %struct.mkhi_msg** %6, align 8
  %28 = getelementptr inbounds %struct.mkhi_msg, %struct.mkhi_msg* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.mkhi_msg*, %struct.mkhi_msg** %6, align 8
  %31 = getelementptr inbounds %struct.mkhi_msg, %struct.mkhi_msg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.mkhi_fwcaps*
  store %struct.mkhi_fwcaps* %33, %struct.mkhi_fwcaps** %7, align 8
  %34 = load %struct.mkhi_fwcaps*, %struct.mkhi_fwcaps** %7, align 8
  %35 = getelementptr inbounds %struct.mkhi_fwcaps, %struct.mkhi_fwcaps* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32, i32* @MKHI_FEATURE_PTT, align 4
  %38 = load %struct.mkhi_fwcaps*, %struct.mkhi_fwcaps** %7, align 8
  %39 = getelementptr inbounds %struct.mkhi_fwcaps, %struct.mkhi_fwcaps* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.mkhi_fwcaps*, %struct.mkhi_fwcaps** %7, align 8
  %42 = getelementptr inbounds %struct.mkhi_fwcaps, %struct.mkhi_fwcaps* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.mkhi_fwcaps*, %struct.mkhi_fwcaps** %7, align 8
  %44 = getelementptr inbounds %struct.mkhi_fwcaps, %struct.mkhi_fwcaps* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.mei_os_ver*
  store %struct.mei_os_ver* %46, %struct.mei_os_ver** %8, align 8
  %47 = load i32, i32* @OSTYPE_LINUX, align 4
  %48 = load %struct.mei_os_ver*, %struct.mei_os_ver** %8, align 8
  %49 = getelementptr inbounds %struct.mei_os_ver, %struct.mei_os_ver* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %51 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %3, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @__mei_cl_send(i32 %52, i8* %15, i64 %53, i32 %54)
  %56 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %56)
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i64) #2

declare dso_local i32 @__mei_cl_send(i32, i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
