; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_link_status_user_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_link_status_user_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgx_link_user_info = type { i64, i64, i64, i32, i32 }
%struct.cgx = type { i32 }

@RESP_LINKSTAT_UP = common dso_local global i32 0, align 4
@RESP_LINKSTAT_FDUPLEX = common dso_local global i32 0, align 4
@cgx_speed_mbps = common dso_local global i32* null, align 8
@RESP_LINKSTAT_SPEED = common dso_local global i32 0, align 4
@cgx_lmactype_string = common dso_local global i8** null, align 8
@LMACTYPE_STR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cgx_link_user_info*, %struct.cgx*, i32)* @link_status_user_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_status_user_format(i32 %0, %struct.cgx_link_user_info* %1, %struct.cgx* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgx_link_user_info*, align 8
  %7 = alloca %struct.cgx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cgx_link_user_info* %1, %struct.cgx_link_user_info** %6, align 8
  store %struct.cgx* %2, %struct.cgx** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @RESP_LINKSTAT_UP, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @FIELD_GET(i32 %10, i32 %11)
  %13 = load %struct.cgx_link_user_info*, %struct.cgx_link_user_info** %6, align 8
  %14 = getelementptr inbounds %struct.cgx_link_user_info, %struct.cgx_link_user_info* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* @RESP_LINKSTAT_FDUPLEX, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @FIELD_GET(i32 %15, i32 %16)
  %18 = load %struct.cgx_link_user_info*, %struct.cgx_link_user_info** %6, align 8
  %19 = getelementptr inbounds %struct.cgx_link_user_info, %struct.cgx_link_user_info* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i32*, i32** @cgx_speed_mbps, align 8
  %21 = load i32, i32* @RESP_LINKSTAT_SPEED, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @FIELD_GET(i32 %21, i32 %22)
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cgx_link_user_info*, %struct.cgx_link_user_info** %6, align 8
  %27 = getelementptr inbounds %struct.cgx_link_user_info, %struct.cgx_link_user_info* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cgx*, %struct.cgx** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @cgx_get_lmac_type(%struct.cgx* %28, i32 %29)
  %31 = load %struct.cgx_link_user_info*, %struct.cgx_link_user_info** %6, align 8
  %32 = getelementptr inbounds %struct.cgx_link_user_info, %struct.cgx_link_user_info* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load i8**, i8*** @cgx_lmactype_string, align 8
  %34 = load %struct.cgx_link_user_info*, %struct.cgx_link_user_info** %6, align 8
  %35 = getelementptr inbounds %struct.cgx_link_user_info, %struct.cgx_link_user_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  %39 = load %struct.cgx_link_user_info*, %struct.cgx_link_user_info** %6, align 8
  %40 = getelementptr inbounds %struct.cgx_link_user_info, %struct.cgx_link_user_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* @LMACTYPE_STR_LEN, align 8
  %44 = sub nsw i64 %43, 1
  %45 = call i32 @strncpy(i32 %41, i8* %42, i64 %44)
  ret void
}

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i64 @cgx_get_lmac_type(%struct.cgx*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
