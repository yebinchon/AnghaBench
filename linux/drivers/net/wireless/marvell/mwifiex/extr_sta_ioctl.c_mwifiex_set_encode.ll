; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_set_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_set_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.key_params = type { i64, i32, i32* }
%struct.mwifiex_ds_encrypt_key = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_set_encode(%struct.mwifiex_private* %0, %struct.key_params* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.mwifiex_private*, align 8
  %9 = alloca %struct.key_params*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mwifiex_ds_encrypt_key, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %8, align 8
  store %struct.key_params* %1, %struct.key_params** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = call i32 @memset(%struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 40)
  %17 = load i32, i32* %11, align 4
  %18 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %12, align 4
  %20 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 9
  store i32 %19, i32* %20, align 4
  %21 = load %struct.key_params*, %struct.key_params** %9, align 8
  %22 = icmp ne %struct.key_params* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %7
  %24 = load %struct.key_params*, %struct.key_params** %9, align 8
  %25 = getelementptr inbounds %struct.key_params, %struct.key_params* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %23, %7
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %83, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @memcpy(i32 %39, i32* %40, i32 %41)
  br label %45

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 2
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32 %50, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load %struct.key_params*, %struct.key_params** %9, align 8
  %56 = icmp ne %struct.key_params* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load %struct.key_params*, %struct.key_params** %9, align 8
  %59 = getelementptr inbounds %struct.key_params, %struct.key_params* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load %struct.key_params*, %struct.key_params** %9, align 8
  %64 = getelementptr inbounds %struct.key_params, %struct.key_params* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.key_params*, %struct.key_params** %9, align 8
  %71 = getelementptr inbounds %struct.key_params, %struct.key_params* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.key_params*, %struct.key_params** %9, align 8
  %74 = getelementptr inbounds %struct.key_params, %struct.key_params* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memcpy(i32 %69, i32* %72, i32 %75)
  %77 = load %struct.key_params*, %struct.key_params** %9, align 8
  %78 = getelementptr inbounds %struct.key_params, %struct.key_params* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 4
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %67, %62, %57, %54
  br label %94

83:                                               ; preds = %31
  %84 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 5
  store i32 1, i32* %84, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %15, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = call i32 @memcpy(i32 %89, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %83
  br label %94

94:                                               ; preds = %93, %82
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %96 = call i32 @mwifiex_sec_ioctl_encrypt_key(%struct.mwifiex_private* %95, %struct.mwifiex_ds_encrypt_key* %15)
  ret i32 %96
}

declare dso_local i32 @memset(%struct.mwifiex_ds_encrypt_key*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mwifiex_sec_ioctl_encrypt_key(%struct.mwifiex_private*, %struct.mwifiex_ds_encrypt_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
