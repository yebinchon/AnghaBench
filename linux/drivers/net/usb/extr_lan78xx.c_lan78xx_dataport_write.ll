; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_dataport_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_dataport_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32, i64* }
%struct.lan78xx_priv = type { i32 }

@DP_SEL = common dso_local global i32 0, align 4
@DP_SEL_RSEL_MASK_ = common dso_local global i32 0, align 4
@DP_ADDR = common dso_local global i32 0, align 4
@DP_DATA = common dso_local global i32 0, align 4
@DP_CMD = common dso_local global i32 0, align 4
@DP_CMD_WRITE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, i32, i32, i32, i32*)* @lan78xx_dataport_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_dataport_write(%struct.lan78xx_net* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lan78xx_net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.lan78xx_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %17 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.lan78xx_priv*
  store %struct.lan78xx_priv* %21, %struct.lan78xx_priv** %12, align 8
  %22 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %23 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @usb_autopm_get_interface(i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %94

28:                                               ; preds = %5
  %29 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %12, align 8
  %30 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %33 = call i32 @lan78xx_dataport_wait_not_busy(%struct.lan78xx_net* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %85

37:                                               ; preds = %28
  %38 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %39 = load i32, i32* @DP_SEL, align 4
  %40 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %38, i32 %39, i32* %13)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* @DP_SEL_RSEL_MASK_, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %49 = load i32, i32* @DP_SEL, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %48, i32 %49, i32 %50)
  store i32 %51, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %81, %37
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %58 = load i32, i32* @DP_ADDR, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %57, i32 %58, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %64 = load i32, i32* @DP_DATA, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %63, i32 %64, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %72 = load i32, i32* @DP_CMD, align 4
  %73 = load i32, i32* @DP_CMD_WRITE_, align 4
  %74 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %71, i32 %72, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %76 = call i32 @lan78xx_dataport_wait_not_busy(%struct.lan78xx_net* %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %56
  br label %85

80:                                               ; preds = %56
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %52

84:                                               ; preds = %52
  br label %85

85:                                               ; preds = %84, %79, %36
  %86 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %12, align 8
  %87 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %90 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @usb_autopm_put_interface(i32 %91)
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %85, %27
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i64 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lan78xx_dataport_wait_not_busy(%struct.lan78xx_net*) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
