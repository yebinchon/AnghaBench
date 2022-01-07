; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc28j60_net = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [383 x i8] c" %s\0AHwRevID: 0x%02x\0ACntrl: ECON1 ECON2 ESTAT  EIR  EIE\0A       0x%02x  0x%02x  0x%02x  0x%02x  0x%02x\0AMAC  : MACON1 MACON3 MACON4\0A       0x%02x   0x%02x   0x%02x\0ARx   : ERXST  ERXND  ERXWRPT ERXRDPT ERXFCON EPKTCNT MAMXFL\0A       0x%04x 0x%04x 0x%04x  0x%04x  0x%02x    0x%02x    0x%04x\0ATx   : ETXST  ETXND  MACLCON1 MACLCON2 MAPHSUP\0A       0x%04x 0x%04x 0x%02x     0x%02x     0x%02x\0A\00", align 1
@EREVID = common dso_local global i32 0, align 4
@ECON1 = common dso_local global i32 0, align 4
@ECON2 = common dso_local global i32 0, align 4
@ESTAT = common dso_local global i32 0, align 4
@EIR = common dso_local global i32 0, align 4
@EIE = common dso_local global i32 0, align 4
@MACON1 = common dso_local global i32 0, align 4
@MACON3 = common dso_local global i32 0, align 4
@MACON4 = common dso_local global i32 0, align 4
@ERXSTL = common dso_local global i32 0, align 4
@ERXNDL = common dso_local global i32 0, align 4
@ERXWRPTL = common dso_local global i32 0, align 4
@ERXRDPTL = common dso_local global i32 0, align 4
@ERXFCON = common dso_local global i32 0, align 4
@EPKTCNT = common dso_local global i32 0, align 4
@MAMXFLL = common dso_local global i32 0, align 4
@ETXSTL = common dso_local global i32 0, align 4
@ETXNDL = common dso_local global i32 0, align 4
@MACLCON1 = common dso_local global i32 0, align 4
@MACLCON2 = common dso_local global i32 0, align 4
@MAPHSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enc28j60_net*, i8*)* @enc28j60_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc28j60_dump_regs(%struct.enc28j60_net* %0, i8* %1) #0 {
  %3 = alloca %struct.enc28j60_net*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.enc28j60_net* %0, %struct.enc28j60_net** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %7 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %11 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @KERN_DEBUG, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %17 = load i32, i32* @EREVID, align 4
  %18 = call i32 @nolock_regb_read(%struct.enc28j60_net* %16, i32 %17)
  %19 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %20 = load i32, i32* @ECON1, align 4
  %21 = call i32 @nolock_regb_read(%struct.enc28j60_net* %19, i32 %20)
  %22 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %23 = load i32, i32* @ECON2, align 4
  %24 = call i32 @nolock_regb_read(%struct.enc28j60_net* %22, i32 %23)
  %25 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %26 = load i32, i32* @ESTAT, align 4
  %27 = call i32 @nolock_regb_read(%struct.enc28j60_net* %25, i32 %26)
  %28 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %29 = load i32, i32* @EIR, align 4
  %30 = call i32 @nolock_regb_read(%struct.enc28j60_net* %28, i32 %29)
  %31 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %32 = load i32, i32* @EIE, align 4
  %33 = call i32 @nolock_regb_read(%struct.enc28j60_net* %31, i32 %32)
  %34 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %35 = load i32, i32* @MACON1, align 4
  %36 = call i32 @nolock_regb_read(%struct.enc28j60_net* %34, i32 %35)
  %37 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %38 = load i32, i32* @MACON3, align 4
  %39 = call i32 @nolock_regb_read(%struct.enc28j60_net* %37, i32 %38)
  %40 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %41 = load i32, i32* @MACON4, align 4
  %42 = call i32 @nolock_regb_read(%struct.enc28j60_net* %40, i32 %41)
  %43 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %44 = load i32, i32* @ERXSTL, align 4
  %45 = call i32 @nolock_regw_read(%struct.enc28j60_net* %43, i32 %44)
  %46 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %47 = load i32, i32* @ERXNDL, align 4
  %48 = call i32 @nolock_regw_read(%struct.enc28j60_net* %46, i32 %47)
  %49 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %50 = load i32, i32* @ERXWRPTL, align 4
  %51 = call i32 @nolock_regw_read(%struct.enc28j60_net* %49, i32 %50)
  %52 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %53 = load i32, i32* @ERXRDPTL, align 4
  %54 = call i32 @nolock_regw_read(%struct.enc28j60_net* %52, i32 %53)
  %55 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %56 = load i32, i32* @ERXFCON, align 4
  %57 = call i32 @nolock_regb_read(%struct.enc28j60_net* %55, i32 %56)
  %58 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %59 = load i32, i32* @EPKTCNT, align 4
  %60 = call i32 @nolock_regb_read(%struct.enc28j60_net* %58, i32 %59)
  %61 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %62 = load i32, i32* @MAMXFLL, align 4
  %63 = call i32 @nolock_regw_read(%struct.enc28j60_net* %61, i32 %62)
  %64 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %65 = load i32, i32* @ETXSTL, align 4
  %66 = call i32 @nolock_regw_read(%struct.enc28j60_net* %64, i32 %65)
  %67 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %68 = load i32, i32* @ETXNDL, align 4
  %69 = call i32 @nolock_regw_read(%struct.enc28j60_net* %67, i32 %68)
  %70 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %71 = load i32, i32* @MACLCON1, align 4
  %72 = call i32 @nolock_regb_read(%struct.enc28j60_net* %70, i32 %71)
  %73 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %74 = load i32, i32* @MACLCON2, align 4
  %75 = call i32 @nolock_regb_read(%struct.enc28j60_net* %73, i32 %74)
  %76 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %77 = load i32, i32* @MAPHSUP, align 4
  %78 = call i32 @nolock_regb_read(%struct.enc28j60_net* %76, i32 %77)
  %79 = call i32 @dev_printk(i32 %13, %struct.device* %14, i8* getelementptr inbounds ([383 x i8], [383 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78)
  %80 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %81 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_printk(i32, %struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nolock_regb_read(%struct.enc28j60_net*, i32) #1

declare dso_local i32 @nolock_regw_read(%struct.enc28j60_net*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
