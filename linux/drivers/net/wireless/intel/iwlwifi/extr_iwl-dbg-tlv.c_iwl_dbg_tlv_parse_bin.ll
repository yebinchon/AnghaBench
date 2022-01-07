; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-dbg-tlv.c_iwl_dbg_tlv_parse_bin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-dbg-tlv.c_iwl_dbg_tlv_parse_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_ucode_tlv = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid TLV len: %zd/%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32*, i64)* @iwl_dbg_tlv_parse_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dbg_tlv_parse_bin(%struct.iwl_trans* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iwl_ucode_tlv*, align 8
  %9 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp uge i64 %11, 4
  br i1 %12, label %13, label %46

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = sub i64 %14, 4
  store i64 %15, i64* %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.iwl_ucode_tlv*
  store %struct.iwl_ucode_tlv* %18, %struct.iwl_ucode_tlv** %8, align 8
  %19 = load %struct.iwl_ucode_tlv*, %struct.iwl_ucode_tlv** %8, align 8
  %20 = getelementptr inbounds %struct.iwl_ucode_tlv, %struct.iwl_ucode_tlv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32_to_cpu(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %13
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @IWL_ERR(%struct.iwl_trans* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %47

33:                                               ; preds = %13
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @ALIGN(i64 %34, i32 4)
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @ALIGN(i64 %38, i32 4)
  %40 = add i64 4, %39
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 %40
  store i32* %42, i32** %6, align 8
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %44 = load %struct.iwl_ucode_tlv*, %struct.iwl_ucode_tlv** %8, align 8
  %45 = call i32 @iwl_dbg_tlv_alloc(%struct.iwl_trans* %43, %struct.iwl_ucode_tlv* %44, i32 1)
  br label %10

46:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %26
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i64, i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @iwl_dbg_tlv_alloc(%struct.iwl_trans*, %struct.iwl_ucode_tlv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
