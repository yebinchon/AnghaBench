; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_nc_dump_usbctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_nc_dump_usbctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"net1080 %s-%s usbctl 0x%x:%s%s%s%s%s; this%s%s; other%s%s; r/o 0x%x\0A\00", align 1
@USBCTL_ENABLE_LANG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" lang\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@USBCTL_ENABLE_MFGR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" mfgr\00", align 1
@USBCTL_ENABLE_PROD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" prod\00", align 1
@USBCTL_ENABLE_SERIAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" serial\00", align 1
@USBCTL_ENABLE_DEFAULTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c" defaults\00", align 1
@USBCTL_FLUSH_THIS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c" FLUSH\00", align 1
@USBCTL_DISCONN_THIS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c" DIS\00", align 1
@USBCTL_FLUSH_OTHER = common dso_local global i32 0, align 4
@USBCTL_DISCONN_OTHER = common dso_local global i32 0, align 4
@USBCTL_WRITABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32)* @nc_dump_usbctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nc_dump_usbctl(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %6 = load i32, i32* @link, align 4
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @USBCTL_ENABLE_LANG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @USBCTL_ENABLE_MFGR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @USBCTL_ENABLE_PROD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @USBCTL_ENABLE_SERIAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @USBCTL_ENABLE_DEFAULTS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @USBCTL_FLUSH_THIS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @USBCTL_DISCONN_THIS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @USBCTL_FLUSH_OTHER, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @USBCTL_DISCONN_OTHER, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @USBCTL_WRITABLE_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = call i32 @netif_dbg(%struct.usbnet* %5, i32 %6, i32 %9, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21, i32 %22, i8* %28, i8* %34, i8* %40, i8* %46, i8* %52, i8* %58, i8* %64, i8* %70, i8* %76, i32 %80)
  ret void
}

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
