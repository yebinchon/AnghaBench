; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_nc_dump_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_nc_dump_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"net1080 %s-%s status 0x%x: this (%c) PKT=%d%s%s%s; other PKT=%d%s%s%s; unspec 0x%x\0A\00", align 1
@STATUS_PORT_A = common dso_local global i32 0, align 4
@STATUS_CONN_THIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" CON\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STATUS_SUSPEND_THIS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" SUS\00", align 1
@STATUS_MAILBOX_THIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" MBOX\00", align 1
@STATUS_CONN_OTHER = common dso_local global i32 0, align 4
@STATUS_SUSPEND_OTHER = common dso_local global i32 0, align 4
@STATUS_MAILBOX_OTHER = common dso_local global i32 0, align 4
@STATUS_UNSPEC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32)* @nc_dump_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nc_dump_status(%struct.usbnet* %0, i32 %1) #0 {
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
  %24 = load i32, i32* @STATUS_PORT_A, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 65, i32 66
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @STATUS_PACKETS_THIS(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @STATUS_CONN_THIS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @STATUS_SUSPEND_THIS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @STATUS_MAILBOX_THIS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @STATUS_PACKETS_OTHER(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @STATUS_CONN_OTHER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @STATUS_SUSPEND_OTHER, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @STATUS_MAILBOX_OTHER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @STATUS_UNSPEC_MASK, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @netif_dbg(%struct.usbnet* %5, i32 %6, i32 %9, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21, i32 %22, i8 signext %29, i32 %31, i8* %37, i8* %43, i8* %49, i32 %51, i8* %57, i8* %63, i8* %69, i32 %72)
  ret void
}

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, i32, i32, i32, i8 signext, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @STATUS_PACKETS_THIS(i32) #1

declare dso_local i32 @STATUS_PACKETS_OTHER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
