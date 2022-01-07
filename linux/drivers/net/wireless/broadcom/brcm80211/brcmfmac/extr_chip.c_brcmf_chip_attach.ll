; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_chip = type { i32 }
%struct.brcmf_buscore_ops = type { i32 (i8*)*, i32, i32, i32 }
%struct.brcmf_chip_priv = type { %struct.brcmf_chip, i8*, %struct.brcmf_buscore_ops*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.brcmf_chip* @brcmf_chip_attach(i8* %0, %struct.brcmf_buscore_ops* %1) #0 {
  %3 = alloca %struct.brcmf_chip*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_buscore_ops*, align 8
  %6 = alloca %struct.brcmf_chip_priv*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.brcmf_buscore_ops* %1, %struct.brcmf_buscore_ops** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.brcmf_buscore_ops*, %struct.brcmf_buscore_ops** %5, align 8
  %9 = getelementptr inbounds %struct.brcmf_buscore_ops, %struct.brcmf_buscore_ops* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.brcmf_buscore_ops*, %struct.brcmf_buscore_ops** %5, align 8
  %21 = getelementptr inbounds %struct.brcmf_buscore_ops, %struct.brcmf_buscore_ops* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %19
  %32 = load %struct.brcmf_buscore_ops*, %struct.brcmf_buscore_ops** %5, align 8
  %33 = getelementptr inbounds %struct.brcmf_buscore_ops, %struct.brcmf_buscore_ops* %32, i32 0, i32 0
  %34 = load i32 (i8*)*, i32 (i8*)** %33, align 8
  %35 = icmp ne i32 (i8*)* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %31
  %44 = load %struct.brcmf_buscore_ops*, %struct.brcmf_buscore_ops** %5, align 8
  %45 = getelementptr inbounds %struct.brcmf_buscore_ops, %struct.brcmf_buscore_ops* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %43
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.brcmf_chip* @ERR_PTR(i32 %60)
  store %struct.brcmf_chip* %61, %struct.brcmf_chip** %3, align 8
  br label %112

62:                                               ; preds = %55
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.brcmf_chip_priv* @kzalloc(i32 40, i32 %63)
  store %struct.brcmf_chip_priv* %64, %struct.brcmf_chip_priv** %6, align 8
  %65 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %66 = icmp ne %struct.brcmf_chip_priv* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.brcmf_chip* @ERR_PTR(i32 %69)
  store %struct.brcmf_chip* %70, %struct.brcmf_chip** %3, align 8
  br label %112

71:                                               ; preds = %62
  %72 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %73 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %72, i32 0, i32 4
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %76 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.brcmf_buscore_ops*, %struct.brcmf_buscore_ops** %5, align 8
  %78 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %79 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %78, i32 0, i32 2
  store %struct.brcmf_buscore_ops* %77, %struct.brcmf_buscore_ops** %79, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %82 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.brcmf_buscore_ops*, %struct.brcmf_buscore_ops** %5, align 8
  %84 = getelementptr inbounds %struct.brcmf_buscore_ops, %struct.brcmf_buscore_ops* %83, i32 0, i32 0
  %85 = load i32 (i8*)*, i32 (i8*)** %84, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 %85(i8* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  br label %106

91:                                               ; preds = %71
  %92 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %93 = call i32 @brcmf_chip_recognition(%struct.brcmf_chip_priv* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %106

97:                                               ; preds = %91
  %98 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %99 = call i32 @brcmf_chip_setup(%struct.brcmf_chip_priv* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %106

103:                                              ; preds = %97
  %104 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %105 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %104, i32 0, i32 0
  store %struct.brcmf_chip* %105, %struct.brcmf_chip** %3, align 8
  br label %112

106:                                              ; preds = %102, %96, %90
  %107 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %108 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %107, i32 0, i32 0
  %109 = call i32 @brcmf_chip_detach(%struct.brcmf_chip* %108)
  %110 = load i32, i32* %7, align 4
  %111 = call %struct.brcmf_chip* @ERR_PTR(i32 %110)
  store %struct.brcmf_chip* %111, %struct.brcmf_chip** %3, align 8
  br label %112

112:                                              ; preds = %106, %103, %67, %58
  %113 = load %struct.brcmf_chip*, %struct.brcmf_chip** %3, align 8
  ret %struct.brcmf_chip* %113
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.brcmf_chip* @ERR_PTR(i32) #1

declare dso_local %struct.brcmf_chip_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @brcmf_chip_recognition(%struct.brcmf_chip_priv*) #1

declare dso_local i32 @brcmf_chip_setup(%struct.brcmf_chip_priv*) #1

declare dso_local i32 @brcmf_chip_detach(%struct.brcmf_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
