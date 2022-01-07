; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54usb.c_p54u_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54usb.c_p54u_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54u_priv = type { i32 }
%struct.net2280_reg_write = type { i8*, i8*, i32 }

@P54U_PIPE_DEV = common dso_local global i32 0, align 4
@P54U_PIPE_BRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54u_priv*, %struct.net2280_reg_write*, i32, i8*, i8*)* @p54u_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54u_write(%struct.p54u_priv* %0, %struct.net2280_reg_write* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.p54u_priv*, align 8
  %7 = alloca %struct.net2280_reg_write*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.p54u_priv* %0, %struct.p54u_priv** %6, align 8
  store %struct.net2280_reg_write* %1, %struct.net2280_reg_write** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 2048
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %18 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @P54U_PIPE_DEV, align 4
  %21 = call i32 @usb_sndbulkpipe(i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  br label %28

22:                                               ; preds = %5
  %23 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %24 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @P54U_PIPE_BRG, align 4
  %27 = call i32 @usb_sndbulkpipe(i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.net2280_reg_write*, %struct.net2280_reg_write** %7, align 8
  %32 = getelementptr inbounds %struct.net2280_reg_write, %struct.net2280_reg_write* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.net2280_reg_write*, %struct.net2280_reg_write** %7, align 8
  %35 = getelementptr inbounds %struct.net2280_reg_write, %struct.net2280_reg_write* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.net2280_reg_write*, %struct.net2280_reg_write** %7, align 8
  %38 = getelementptr inbounds %struct.net2280_reg_write, %struct.net2280_reg_write* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.p54u_priv*, %struct.p54u_priv** %6, align 8
  %40 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.net2280_reg_write*, %struct.net2280_reg_write** %7, align 8
  %44 = call i32 @usb_bulk_msg(i32 %41, i32 %42, %struct.net2280_reg_write* %43, i32 24, i32* %12, i32 1000)
  ret i32 %44
}

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, %struct.net2280_reg_write*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
