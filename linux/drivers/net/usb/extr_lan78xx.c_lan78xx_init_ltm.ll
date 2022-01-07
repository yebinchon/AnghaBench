; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_init_ltm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_init_ltm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32 }

@USB_CFG1 = common dso_local global i32 0, align 4
@USB_CFG1_LTM_ENABLE_ = common dso_local global i32 0, align 4
@LTM_BELT_IDLE0 = common dso_local global i32 0, align 4
@LTM_BELT_IDLE1 = common dso_local global i32 0, align 4
@LTM_BELT_ACT0 = common dso_local global i32 0, align 4
@LTM_BELT_ACT1 = common dso_local global i32 0, align 4
@LTM_INACTIVE0 = common dso_local global i32 0, align 4
@LTM_INACTIVE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan78xx_net*)* @lan78xx_init_ltm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_init_ltm(%struct.lan78xx_net* %0) #0 {
  %2 = alloca %struct.lan78xx_net*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  %6 = alloca [2 x i32], align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %2, align 8
  %7 = bitcast [6 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %9 = load i32, i32* @USB_CFG1, align 4
  %10 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %8, i32 %9, i32* %4)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @USB_CFG1_LTM_ENABLE_, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %1
  %16 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %18 = call i64 @lan78xx_read_eeprom(%struct.lan78xx_net* %16, i32 63, i32 2, i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 2
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %30 = call i32 @lan78xx_read_raw_eeprom(%struct.lan78xx_net* %25, i32 %28, i32 24, i32* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %90

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %20
  br label %58

36:                                               ; preds = %15
  %37 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %39 = call i64 @lan78xx_read_otp(%struct.lan78xx_net* %37, i32 63, i32 2, i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 24
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 2
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %51 = call i32 @lan78xx_read_raw_otp(%struct.lan78xx_net* %46, i32 %49, i32 24, i32* %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %90

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56, %36
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %61 = load i32, i32* @LTM_BELT_IDLE0, align 4
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %60, i32 %61, i32 %63)
  %65 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %66 = load i32, i32* @LTM_BELT_IDLE1, align 4
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %65, i32 %66, i32 %68)
  %70 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %71 = load i32, i32* @LTM_BELT_ACT0, align 4
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %70, i32 %71, i32 %73)
  %75 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %76 = load i32, i32* @LTM_BELT_ACT1, align 4
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %75, i32 %76, i32 %78)
  %80 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %81 = load i32, i32* @LTM_INACTIVE0, align 4
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %83 = load i32, i32* %82, align 16
  %84 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %80, i32 %81, i32 %83)
  %85 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %86 = load i32, i32* @LTM_INACTIVE1, align 4
  %87 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %85, i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %59, %54, %33
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #2

declare dso_local i64 @lan78xx_read_eeprom(%struct.lan78xx_net*, i32, i32, i32*) #2

declare dso_local i32 @lan78xx_read_raw_eeprom(%struct.lan78xx_net*, i32, i32, i32*) #2

declare dso_local i64 @lan78xx_read_otp(%struct.lan78xx_net*, i32, i32, i32*) #2

declare dso_local i32 @lan78xx_read_raw_otp(%struct.lan78xx_net*, i32, i32, i32*) #2

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
