; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_search_bd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_search_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_fw_ie = type { i32*, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"invalid length for board ie_id %d ie_len %zu len %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i32*, i64)* @ath10k_core_search_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_core_search_bd(%struct.ath10k* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ath10k_fw_ie*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  br label %16

16:                                               ; preds = %75, %4
  %17 = load i64, i64* %9, align 8
  %18 = icmp ugt i64 %17, 16
  br i1 %18, label %19, label %84

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  %21 = bitcast i32* %20 to %struct.ath10k_fw_ie*
  store %struct.ath10k_fw_ie* %21, %struct.ath10k_fw_ie** %11, align 8
  %22 = load %struct.ath10k_fw_ie*, %struct.ath10k_fw_ie** %11, align 8
  %23 = getelementptr inbounds %struct.ath10k_fw_ie, %struct.ath10k_fw_ie* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @le32_to_cpu(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load %struct.ath10k_fw_ie*, %struct.ath10k_fw_ie** %11, align 8
  %28 = getelementptr inbounds %struct.ath10k_fw_ie, %struct.ath10k_fw_ie* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @le32_to_cpu(i32 %29)
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = sub i64 %32, 16
  store i64 %33, i64* %9, align 8
  %34 = load %struct.ath10k_fw_ie*, %struct.ath10k_fw_ie** %11, align 8
  %35 = getelementptr inbounds %struct.ath10k_fw_ie, %struct.ath10k_fw_ie* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @ALIGN(i64 %38, i32 4)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %19
  %42 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @ath10k_err(%struct.ath10k* %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %44, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %87

49:                                               ; preds = %19
  %50 = load i32, i32* %13, align 4
  switch i32 %50, label %75 [
    i32 129, label %51
    i32 128, label %63
  ]

51:                                               ; preds = %49
  %52 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @ath10k_core_parse_bd_ie_board(%struct.ath10k* %52, i32* %53, i64 %54, i8* %55, i32 129)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %75

62:                                               ; preds = %51
  br label %85

63:                                               ; preds = %49
  %64 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @ath10k_core_parse_bd_ie_board(%struct.ath10k* %64, i32* %65, i64 %66, i8* %67, i32 128)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %75

74:                                               ; preds = %63
  br label %85

75:                                               ; preds = %49, %73, %61
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @ALIGN(i64 %76, i32 4)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %8, align 8
  br label %16

84:                                               ; preds = %16
  br label %85

85:                                               ; preds = %84, %74, %62
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %41
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, i64, i64) #1

declare dso_local i32 @ath10k_core_parse_bd_ie_board(%struct.ath10k*, i32*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
