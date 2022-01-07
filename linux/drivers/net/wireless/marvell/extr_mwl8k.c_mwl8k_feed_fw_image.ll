; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_feed_fw_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_feed_fw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_priv = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_HIU_SCRATCH = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl8k_priv*, i32*, i64)* @mwl8k_feed_fw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_feed_fw_image(%struct.mwl8k_priv* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl8k_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mwl8k_priv* %0, %struct.mwl8k_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc(i32 1024, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %102

21:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1000, i32* %9, align 4
  br label %22

22:                                               ; preds = %88, %66, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %89

25:                                               ; preds = %22
  %26 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MWL8K_HIU_SCRATCH, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @ioread32(i64 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, -2
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %9, align 4
  br label %48

40:                                               ; preds = %25
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %40, %35
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %49, 1024
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %7, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %48
  %57 = load i32, i32* @EOVERFLOW, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %89

59:                                               ; preds = %51
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  br label %89

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @EPROTO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %9, align 4
  %71 = call i32 @udelay(i32 1)
  br label %22

72:                                               ; preds = %63
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @memcpy(i8* %74, i32* %78, i32 %79)
  %81 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @mwl8k_send_fw_load_cmd(%struct.mwl8k_priv* %81, i8* %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %89

88:                                               ; preds = %72
  br label %22

89:                                               ; preds = %87, %62, %56, %22
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* @EREMOTEIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %95, %92, %89
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @kfree(i8* %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %18
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @mwl8k_send_fw_load_cmd(%struct.mwl8k_priv*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
