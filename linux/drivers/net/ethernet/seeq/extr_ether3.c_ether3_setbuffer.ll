; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_setbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_setbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@CFG1_LOCBUFMEM = common dso_local global i32 0, align 4
@REG_CONFIG1 = common dso_local global i32 0, align 4
@CMD_FIFOWRITE = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i32 0, align 4
@STAT_FIFOEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: setbuffer broken\0A\00", align 1
@buffer_read = common dso_local global i64 0, align 8
@REG_DMAADDR = common dso_local global i32 0, align 4
@CMD_FIFOREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i32)* @ether3_setbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether3_setbuffer(%struct.net_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.TYPE_4__* @priv(%struct.net_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CFG1_LOCBUFMEM, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @REG_CONFIG1, align 4
  %17 = call i32 @ether3_outw(i32 %15, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.TYPE_4__* @priv(%struct.net_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CMD_FIFOWRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @REG_COMMAND, align 4
  %26 = call i32 @ether3_outw(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %45, %3
  %28 = load i32, i32* @REG_STATUS, align 4
  %29 = call i32 @ether3_inw(i32 %28)
  %30 = load i32, i32* @STAT_FIFOEMPTY, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call %struct.TYPE_4__* @priv(%struct.net_device* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  store i32 1, i32* %4, align 4
  br label %78

45:                                               ; preds = %33
  %46 = call i32 @udelay(i32 1)
  br label %27

47:                                               ; preds = %27
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @buffer_read, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @REG_DMAADDR, align 4
  %54 = call i32 @ether3_outw(i32 %52, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = call %struct.TYPE_4__* @priv(%struct.net_device* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CMD_FIFOREAD, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @REG_COMMAND, align 4
  %63 = call i32 @ether3_outw(i32 %61, i32 %62)
  br label %77

64:                                               ; preds = %47
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call %struct.TYPE_4__* @priv(%struct.net_device* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CMD_FIFOWRITE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @REG_COMMAND, align 4
  %73 = call i32 @ether3_outw(i32 %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @REG_DMAADDR, align 4
  %76 = call i32 @ether3_outw(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %64, %51
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %37
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @ether3_outw(i32, i32) #1

declare dso_local %struct.TYPE_4__* @priv(%struct.net_device*) #1

declare dso_local i32 @ether3_inw(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
