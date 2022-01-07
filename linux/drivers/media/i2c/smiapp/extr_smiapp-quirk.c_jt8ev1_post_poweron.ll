; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-quirk.c_jt8ev1_post_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-quirk.c_jt8ev1_post_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_reg_8 = type { i32, i32 }
%struct.smiapp_sensor = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }

@jt8ev1_post_poweron.regs = internal constant [19 x %struct.smiapp_reg_8] [%struct.smiapp_reg_8 { i32 12337, i32 205 }, %struct.smiapp_reg_8 { i32 12451, i32 208 }, %struct.smiapp_reg_8 { i32 12855, i32 0 }, %struct.smiapp_reg_8 { i32 12856, i32 67 }, %struct.smiapp_reg_8 { i32 13057, i32 6 }, %struct.smiapp_reg_8 { i32 13058, i32 6 }, %struct.smiapp_reg_8 { i32 13060, i32 0 }, %struct.smiapp_reg_8 { i32 13061, i32 136 }, %struct.smiapp_reg_8 { i32 13098, i32 20 }, %struct.smiapp_reg_8 { i32 13100, i32 107 }, %struct.smiapp_reg_8 { i32 13110, i32 1 }, %struct.smiapp_reg_8 { i32 13119, i32 31 }, %struct.smiapp_reg_8 { i32 13141, i32 0 }, %struct.smiapp_reg_8 { i32 13142, i32 32 }, %struct.smiapp_reg_8 { i32 13247, i32 32 }, %struct.smiapp_reg_8 { i32 13257, i32 32 }, %struct.smiapp_reg_8 { i32 13262, i32 48 }, %struct.smiapp_reg_8 { i32 13263, i32 236 }, %struct.smiapp_reg_8 { i32 13096, i32 128 }], align 16
@jt8ev1_post_poweron.regs_96 = internal constant [3 x %struct.smiapp_reg_8] [%struct.smiapp_reg_8 { i32 12462, i32 0 }, %struct.smiapp_reg_8 { i32 12463, i32 208 }, %struct.smiapp_reg_8 { i32 12464, i32 1 }], align 16
@.str = private unnamed_addr constant [27 x i8] c"no MSRs for %d Hz ext_clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @jt8ev1_post_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jt8ev1_post_poweron(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  %6 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %7 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.smiapp_reg_8* getelementptr inbounds ([19 x %struct.smiapp_reg_8], [19 x %struct.smiapp_reg_8]* @jt8ev1_post_poweron.regs, i64 0, i64 0))
  %13 = call i32 @smiapp_write_8s(%struct.smiapp_sensor* %11, %struct.smiapp_reg_8* getelementptr inbounds ([19 x %struct.smiapp_reg_8], [19 x %struct.smiapp_reg_8]* @jt8ev1_post_poweron.regs, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %20 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %28 [
    i32 9600000, label %24
  ]

24:                                               ; preds = %18
  %25 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.smiapp_reg_8* getelementptr inbounds ([3 x %struct.smiapp_reg_8], [3 x %struct.smiapp_reg_8]* @jt8ev1_post_poweron.regs_96, i64 0, i64 0))
  %27 = call i32 @smiapp_write_8s(%struct.smiapp_sensor* %25, %struct.smiapp_reg_8* getelementptr inbounds ([3 x %struct.smiapp_reg_8], [3 x %struct.smiapp_reg_8]* @jt8ev1_post_poweron.regs_96, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %2, align 4
  br label %37

28:                                               ; preds = %18
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %32 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %28, %24, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @smiapp_write_8s(%struct.smiapp_sensor*, %struct.smiapp_reg_8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.smiapp_reg_8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
