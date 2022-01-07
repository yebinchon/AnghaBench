; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_custom_ie_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_custom_ie_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_ie_list = type { i64, i32 }
%struct.mwifiex_ie_types_header = type { i64, i32 }

@TLV_TYPE_MGMT_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @mwifiex_uap_custom_ie_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_uap_custom_ie_prepare(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mwifiex_ie_list*, align 8
  %9 = alloca %struct.mwifiex_ie_types_header*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.mwifiex_ie_list*
  store %struct.mwifiex_ie_list* %11, %struct.mwifiex_ie_list** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.mwifiex_ie_types_header*
  store %struct.mwifiex_ie_types_header* %14, %struct.mwifiex_ie_types_header** %9, align 8
  %15 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %8, align 8
  %16 = icmp ne %struct.mwifiex_ie_list* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %8, align 8
  %19 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  store i32 -1, i32* %4, align 4
  br label %54

23:                                               ; preds = %17
  %24 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %8, align 8
  %25 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @le16_to_cpu(i64 %26)
  %28 = add i64 %27, 16
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, %28
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load i32, i32* @TLV_TYPE_MGMT_IE, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %9, align 8
  %37 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %8, align 8
  %39 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %9, align 8
  %42 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 16
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %8, align 8
  %47 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %8, align 8
  %50 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @le16_to_cpu(i64 %51)
  %53 = call i32 @memcpy(i32* %45, i32 %48, i64 %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %23, %22
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
