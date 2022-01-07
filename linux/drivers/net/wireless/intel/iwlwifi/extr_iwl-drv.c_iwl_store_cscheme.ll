; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_store_cscheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_store_cscheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw = type { %struct.iwl_fw_cipher_scheme* }
%struct.iwl_fw_cipher_scheme = type { i32 }
%struct.iwl_fw_cscheme_list = type { i32, %struct.iwl_fw_cipher_scheme* }

@EINVAL = common dso_local global i32 0, align 4
@IWL_UCODE_MAX_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw*, i32*, i32)* @iwl_store_cscheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_store_cscheme(%struct.iwl_fw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_fw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_fw_cscheme_list*, align 8
  %11 = alloca %struct.iwl_fw_cipher_scheme*, align 8
  store %struct.iwl_fw* %0, %struct.iwl_fw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.iwl_fw_cscheme_list*
  store %struct.iwl_fw_cscheme_list* %13, %struct.iwl_fw_cscheme_list** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 16
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.iwl_fw_cscheme_list*, %struct.iwl_fw_cscheme_list** %10, align 8
  %21 = getelementptr inbounds %struct.iwl_fw_cscheme_list, %struct.iwl_fw_cscheme_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 4, %24
  %26 = icmp ult i64 %19, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %70

30:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %66, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @IWL_UCODE_MAX_CS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.iwl_fw_cscheme_list*, %struct.iwl_fw_cscheme_list** %10, align 8
  %38 = getelementptr inbounds %struct.iwl_fw_cscheme_list, %struct.iwl_fw_cscheme_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ false, %31 ], [ %40, %35 ]
  br i1 %42, label %43, label %69

43:                                               ; preds = %41
  %44 = load %struct.iwl_fw_cscheme_list*, %struct.iwl_fw_cscheme_list** %10, align 8
  %45 = getelementptr inbounds %struct.iwl_fw_cscheme_list, %struct.iwl_fw_cscheme_list* %44, i32 0, i32 1
  %46 = load %struct.iwl_fw_cipher_scheme*, %struct.iwl_fw_cipher_scheme** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.iwl_fw_cipher_scheme, %struct.iwl_fw_cipher_scheme* %46, i64 %48
  store %struct.iwl_fw_cipher_scheme* %49, %struct.iwl_fw_cipher_scheme** %11, align 8
  %50 = load %struct.iwl_fw_cipher_scheme*, %struct.iwl_fw_cipher_scheme** %11, align 8
  %51 = getelementptr inbounds %struct.iwl_fw_cipher_scheme, %struct.iwl_fw_cipher_scheme* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %66

55:                                               ; preds = %43
  %56 = load %struct.iwl_fw*, %struct.iwl_fw** %5, align 8
  %57 = getelementptr inbounds %struct.iwl_fw, %struct.iwl_fw* %56, i32 0, i32 0
  %58 = load %struct.iwl_fw_cipher_scheme*, %struct.iwl_fw_cipher_scheme** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.iwl_fw_cipher_scheme, %struct.iwl_fw_cipher_scheme* %58, i64 %61
  %63 = load %struct.iwl_fw_cipher_scheme*, %struct.iwl_fw_cipher_scheme** %11, align 8
  %64 = bitcast %struct.iwl_fw_cipher_scheme* %62 to i8*
  %65 = bitcast %struct.iwl_fw_cipher_scheme* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  br label %66

66:                                               ; preds = %55, %54
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %31

69:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
