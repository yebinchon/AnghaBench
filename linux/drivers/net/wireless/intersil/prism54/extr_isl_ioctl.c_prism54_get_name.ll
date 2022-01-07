; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.oid_res_t = type { i32 }

@PRV_STATE_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"NOT READY!\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@OID_INL_PHYCAPABILITIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"IEEE 802.11a/b/g\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"IEEE 802.11b/g - FAA Support\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"IEEE 802.11b/g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, i8*, i8*)* @prism54_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_get_name(%struct.net_device* %0, %struct.iw_request_info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %union.oid_res_t, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call i32* @netdev_priv(%struct.net_device* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i64 @islpci_get_state(i32* %16)
  %18 = load i64, i64* @PRV_STATE_INIT, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @IFNAMSIZ, align 4
  %23 = call i32 @strncpy(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %5, align 4
  br label %40

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @OID_INL_PHYCAPABILITIES, align 4
  %27 = call i32 @mgt_get_request(i32* %25, i32 %26, i32 0, i32* null, %union.oid_res_t* %12)
  store i32 %27, i32* %13, align 4
  %28 = bitcast %union.oid_res_t* %12 to i32*
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %33 [
    i32 129, label %30
    i32 128, label %31
    i32 130, label %32
  ]

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %34

31:                                               ; preds = %24
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %34

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %24, %32
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %34

34:                                               ; preds = %33, %31, %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @IFNAMSIZ, align 4
  %38 = call i32 @strncpy(i8* %35, i8* %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %20
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @islpci_get_state(i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @mgt_get_request(i32*, i32, i32, i32*, %union.oid_res_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
