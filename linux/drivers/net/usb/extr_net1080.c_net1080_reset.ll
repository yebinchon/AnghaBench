; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_net1080_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_net1080_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@REG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't read %s-%s status: %d\0A\00", align 1
@REG_USBCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"can't read USBCTL, %d\0A\00", align 1
@USBCTL_FLUSH_THIS = common dso_local global i32 0, align 4
@USBCTL_FLUSH_OTHER = common dso_local global i32 0, align 4
@REG_TTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"can't read TTL, %d\0A\00", align 1
@NC_READ_TTL_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"assigned TTL, %d ms\0A\00", align 1
@link = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"port %c, peer %sconnected\0A\00", align 1
@STATUS_PORT_A = common dso_local global i32 0, align 4
@STATUS_CONN_OTHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @net1080_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net1080_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %9 = load i32, i32* @REG_STATUS, align 4
  %10 = call i32 @nc_register_read(%struct.usbnet* %8, i32 %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %28)
  br label %99

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %4, align 4
  %32 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @nc_dump_status(%struct.usbnet* %32, i32 %33)
  %35 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %36 = load i32, i32* @REG_USBCTL, align 4
  %37 = call i32 @nc_register_read(%struct.usbnet* %35, i32 %36, i32* %6)
  store i32 %37, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %41 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %99

45:                                               ; preds = %30
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  %47 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @nc_dump_usbctl(%struct.usbnet* %47, i32 %48)
  %50 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %51 = load i32, i32* @REG_USBCTL, align 4
  %52 = load i32, i32* @USBCTL_FLUSH_THIS, align 4
  %53 = load i32, i32* @USBCTL_FLUSH_OTHER, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @nc_register_write(%struct.usbnet* %50, i32 %51, i32 %54)
  %56 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %57 = load i32, i32* @REG_TTL, align 4
  %58 = call i32 @nc_register_read(%struct.usbnet* %56, i32 %57, i32* %6)
  store i32 %58, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %45
  %61 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %62 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %99

66:                                               ; preds = %45
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %5, align 4
  %68 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %69 = load i32, i32* @REG_TTL, align 4
  %70 = load i32, i32* @NC_READ_TTL_MS, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @TTL_OTHER(i32 %71)
  %73 = call i32 @MK_TTL(i32 %70, i32 %72)
  %74 = call i32 @nc_register_write(%struct.usbnet* %68, i32 %69, i32 %73)
  %75 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %76 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @NC_READ_TTL_MS, align 4
  %79 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %81 = load i32, i32* @link, align 4
  %82 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %83 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @STATUS_PORT_A, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 65, i32 66
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @STATUS_CONN_OTHER, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %98 = call i32 @netif_info(%struct.usbnet* %80, i32 %81, i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8 signext %91, i8* %97)
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %66, %60, %39, %12
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @nc_register_read(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @nc_dump_status(%struct.usbnet*, i32) #1

declare dso_local i32 @nc_dump_usbctl(%struct.usbnet*, i32) #1

declare dso_local i32 @nc_register_write(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @MK_TTL(i32, i32) #1

declare dso_local i32 @TTL_OTHER(i32) #1

declare dso_local i32 @netif_info(%struct.usbnet*, i32, i32, i8*, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
