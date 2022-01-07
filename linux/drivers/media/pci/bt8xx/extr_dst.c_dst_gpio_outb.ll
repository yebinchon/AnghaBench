; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_gpio_outb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_gpio_outb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }
%union.dst_gpio_packet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"mask=[%04x], enbb=[%04x], outhigh=[%04x]\0A\00", align 1
@DST_IG_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"dst_gpio_enb error (err == %i, mask == %02x, enb == %02x)\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@DST_IG_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"dst_gpio_outb error (err == %i, enbb == %02x, outhigh == %02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i32, i32, i32, i32)* @dst_gpio_outb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_gpio_outb(%struct.dst_state* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.dst_gpio_packet, align 4
  %13 = alloca %union.dst_gpio_packet, align 4
  %14 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = bitcast %union.dst_gpio_packet* %12 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = bitcast %union.dst_gpio_packet* %12 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %26 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DST_IG_ENABLE, align 4
  %29 = call i32 @bt878_device_control(i32 %27, i32 %28, %union.dst_gpio_packet* %12)
  store i32 %29, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @EREMOTEIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %69

38:                                               ; preds = %5
  %39 = call i32 @udelay(i32 1000)
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %69

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @msleep(i32 10)
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32, i32* %9, align 4
  %50 = bitcast %union.dst_gpio_packet* %13 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = bitcast %union.dst_gpio_packet* %13 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %56 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DST_IG_WRITE, align 4
  %59 = call i32 @bt878_device_control(i32 %57, i32 %58, %union.dst_gpio_packet* %13)
  store i32 %59, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %48
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @EREMOTEIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %69

68:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %61, %42, %31
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bt878_device_control(i32, i32, %union.dst_gpio_packet*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
