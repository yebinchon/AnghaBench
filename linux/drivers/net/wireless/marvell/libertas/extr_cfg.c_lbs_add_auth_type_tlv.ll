; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_add_auth_type_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_add_auth_type_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrvl_ie_auth_type = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@TLV_TYPE_AUTH_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @lbs_add_auth_type_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_add_auth_type_tlv(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrvl_ie_auth_type*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.mrvl_ie_auth_type*
  store %struct.mrvl_ie_auth_type* %8, %struct.mrvl_ie_auth_type** %5, align 8
  %9 = load i32, i32* @TLV_TYPE_AUTH_TYPE, align 4
  %10 = call i8* @cpu_to_le16(i32 %9)
  %11 = load %struct.mrvl_ie_auth_type*, %struct.mrvl_ie_auth_type** %5, align 8
  %12 = getelementptr inbounds %struct.mrvl_ie_auth_type, %struct.mrvl_ie_auth_type* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i8* %10, i8** %13, align 8
  %14 = call i8* @cpu_to_le16(i32 8)
  %15 = load %struct.mrvl_ie_auth_type*, %struct.mrvl_ie_auth_type** %5, align 8
  %16 = getelementptr inbounds %struct.mrvl_ie_auth_type, %struct.mrvl_ie_auth_type* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @lbs_auth_to_authtype(i32 %18)
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.mrvl_ie_auth_type*, %struct.mrvl_ie_auth_type** %5, align 8
  %22 = getelementptr inbounds %struct.mrvl_ie_auth_type, %struct.mrvl_ie_auth_type* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret i32 24
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_auth_to_authtype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
