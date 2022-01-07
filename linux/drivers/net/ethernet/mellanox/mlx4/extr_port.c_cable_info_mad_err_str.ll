; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_cable_info_mad_err_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_cable_info_mad_err_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"invalid port selected\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"operation not supported for this port (the port is of type CX4 or internal)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cable is not connected\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"the connected cable has no EPROM (passive copper cable)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"page number is greater than 15\00", align 1
@.str.5 = private unnamed_addr constant [92 x i8] c"invalid device_address or size (that is, size equals 0 or address+size is greater than 256)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"invalid I2C slave address\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"at least one cable violates the QSFP specification and ignores the modsel signal\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"I2C bus is constantly busy\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Unknown Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @cable_info_mad_err_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cable_info_mad_err_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @MAD_STATUS_2_CABLE_ERR(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %17 [
    i32 133, label %8
    i32 130, label %9
    i32 132, label %10
    i32 131, label %11
    i32 129, label %12
    i32 134, label %13
    i32 136, label %14
    i32 128, label %15
    i32 135, label %16
  ]

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %18

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %18

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %18

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %18

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %18

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %18

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %18

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %18

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %18

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local i32 @MAD_STATUS_2_CABLE_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
