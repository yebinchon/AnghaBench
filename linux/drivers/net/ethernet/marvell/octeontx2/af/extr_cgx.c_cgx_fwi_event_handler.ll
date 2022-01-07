; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_fwi_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_fwi_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32, i32, %struct.cgx*, i32, i32 }
%struct.cgx = type { i32 }

@CGX_EVENT_REG = common dso_local global i32 0, align 4
@EVTREG_ACK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@EVTREG_EVT_TYPE = common dso_local global i32 0, align 4
@CGXX_CMRX_INT = common dso_local global i32 0, align 4
@FW_CGX_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cgx_fwi_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgx_fwi_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lmac*, align 8
  %7 = alloca %struct.cgx*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.lmac*
  store %struct.lmac* %10, %struct.lmac** %6, align 8
  %11 = load %struct.lmac*, %struct.lmac** %6, align 8
  %12 = getelementptr inbounds %struct.lmac, %struct.lmac* %11, i32 0, i32 2
  %13 = load %struct.cgx*, %struct.cgx** %12, align 8
  store %struct.cgx* %13, %struct.cgx** %7, align 8
  %14 = load %struct.cgx*, %struct.cgx** %7, align 8
  %15 = load %struct.lmac*, %struct.lmac** %6, align 8
  %16 = getelementptr inbounds %struct.lmac, %struct.lmac* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CGX_EVENT_REG, align 4
  %19 = call i32 @cgx_read(%struct.cgx* %14, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @EVTREG_ACK, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @FIELD_GET(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %2
  %27 = load i32, i32* @EVTREG_EVT_TYPE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @FIELD_GET(i32 %27, i32 %28)
  switch i32 %29, label %57 [
    i32 128, label %30
    i32 129, label %48
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.lmac*, %struct.lmac** %6, align 8
  %33 = getelementptr inbounds %struct.lmac, %struct.lmac* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = call i32 (...) @smp_wmb()
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @cgx_cmdresp_is_linkevent(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.lmac*, %struct.lmac** %6, align 8
  %41 = call i32 @cgx_link_change_handler(i32 %39, %struct.lmac* %40)
  br label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.lmac*, %struct.lmac** %6, align 8
  %44 = getelementptr inbounds %struct.lmac, %struct.lmac* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.lmac*, %struct.lmac** %6, align 8
  %46 = getelementptr inbounds %struct.lmac, %struct.lmac* %45, i32 0, i32 3
  %47 = call i32 @wake_up_interruptible(i32* %46)
  br label %57

48:                                               ; preds = %26
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @cgx_event_is_linkevent(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.lmac*, %struct.lmac** %6, align 8
  %55 = call i32 @cgx_link_change_handler(i32 %53, %struct.lmac* %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %26, %56, %42
  %58 = load %struct.lmac*, %struct.lmac** %6, align 8
  %59 = getelementptr inbounds %struct.lmac, %struct.lmac* %58, i32 0, i32 2
  %60 = load %struct.cgx*, %struct.cgx** %59, align 8
  %61 = load %struct.lmac*, %struct.lmac** %6, align 8
  %62 = getelementptr inbounds %struct.lmac, %struct.lmac* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CGX_EVENT_REG, align 4
  %65 = call i32 @cgx_write(%struct.cgx* %60, i32 %63, i32 %64, i32 0)
  %66 = load %struct.lmac*, %struct.lmac** %6, align 8
  %67 = getelementptr inbounds %struct.lmac, %struct.lmac* %66, i32 0, i32 2
  %68 = load %struct.cgx*, %struct.cgx** %67, align 8
  %69 = load %struct.lmac*, %struct.lmac** %6, align 8
  %70 = getelementptr inbounds %struct.lmac, %struct.lmac* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CGXX_CMRX_INT, align 4
  %73 = load i32, i32* @FW_CGX_INT, align 4
  %74 = call i32 @cgx_write(%struct.cgx* %68, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %57, %24
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @cgx_read(%struct.cgx*, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @cgx_cmdresp_is_linkevent(i32) #1

declare dso_local i32 @cgx_link_change_handler(i32, %struct.lmac*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @cgx_event_is_linkevent(i32) #1

declare dso_local i32 @cgx_write(%struct.cgx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
