; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max14577.c_max14577_print_dev_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max14577.c_max14577_print_dev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577 = type { i32, i32, i32 }

@MAX14577_REG_DEVICEID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to read DEVICEID register: %d\0A\00", align 1
@DEVID_VENDORID_MASK = common dso_local global i32 0, align 4
@DEVID_VENDORID_SHIFT = common dso_local global i32 0, align 4
@DEVID_DEVICEID_MASK = common dso_local global i32 0, align 4
@DEVID_DEVICEID_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Device type: %u (ID: 0x%x, vendor: 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max14577*)* @max14577_print_dev_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max14577_print_dev_type(%struct.max14577* %0) #0 {
  %2 = alloca %struct.max14577*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max14577* %0, %struct.max14577** %2, align 8
  %7 = load %struct.max14577*, %struct.max14577** %2, align 8
  %8 = getelementptr inbounds %struct.max14577, %struct.max14577* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MAX14577_REG_DEVICEID, align 4
  %11 = call i32 @max14577_read_reg(i32 %9, i32 %10, i32* %3)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.max14577*, %struct.max14577** %2, align 8
  %16 = getelementptr inbounds %struct.max14577, %struct.max14577* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %40

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DEVID_VENDORID_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @DEVID_VENDORID_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DEVID_DEVICEID_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @DEVID_DEVICEID_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.max14577*, %struct.max14577** %2, align 8
  %32 = getelementptr inbounds %struct.max14577, %struct.max14577* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.max14577*, %struct.max14577** %2, align 8
  %35 = getelementptr inbounds %struct.max14577, %struct.max14577* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_info(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @max14577_read_reg(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
