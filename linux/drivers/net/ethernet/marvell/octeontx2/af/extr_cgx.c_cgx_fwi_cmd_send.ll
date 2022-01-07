; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_fwi_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_fwi_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32, i32, i32, i32, i32, %struct.cgx* }
%struct.cgx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@CGX_COMMAND_REG = common dso_local global i32 0, align 4
@CMDREG_OWN = common dso_local global i32 0, align 4
@CGX_CMD_OWN_NS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CGX_CMD_OWN_FIRMWARE = common dso_local global i32 0, align 4
@CGX_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cgx port %d:%d cmd timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.lmac*)* @cgx_fwi_cmd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgx_fwi_cmd_send(i32 %0, i32* %1, %struct.lmac* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.lmac*, align 8
  %8 = alloca %struct.cgx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.lmac* %2, %struct.lmac** %7, align 8
  %12 = load %struct.lmac*, %struct.lmac** %7, align 8
  %13 = getelementptr inbounds %struct.lmac, %struct.lmac* %12, i32 0, i32 5
  %14 = load %struct.cgx*, %struct.cgx** %13, align 8
  store %struct.cgx* %14, %struct.cgx** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.lmac*, %struct.lmac** %7, align 8
  %16 = getelementptr inbounds %struct.lmac, %struct.lmac* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock_interruptible(i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %90

22:                                               ; preds = %3
  %23 = load %struct.cgx*, %struct.cgx** %8, align 8
  %24 = load %struct.lmac*, %struct.lmac** %7, align 8
  %25 = getelementptr inbounds %struct.lmac, %struct.lmac* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CGX_COMMAND_REG, align 4
  %28 = call i32 @cgx_read(%struct.cgx* %23, i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @CMDREG_OWN, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @FIELD_GET(i32 %29, i32 %30)
  %32 = load i64, i64* @CGX_CMD_OWN_NS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %85

37:                                               ; preds = %22
  %38 = load i32, i32* @CMDREG_OWN, align 4
  %39 = load i32, i32* @CGX_CMD_OWN_FIRMWARE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @FIELD_SET(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.lmac*, %struct.lmac** %7, align 8
  %43 = getelementptr inbounds %struct.lmac, %struct.lmac* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.cgx*, %struct.cgx** %8, align 8
  %45 = load %struct.lmac*, %struct.lmac** %7, align 8
  %46 = getelementptr inbounds %struct.lmac, %struct.lmac* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CGX_COMMAND_REG, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @cgx_write(%struct.cgx* %44, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.lmac*, %struct.lmac** %7, align 8
  %52 = getelementptr inbounds %struct.lmac, %struct.lmac* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.lmac*, %struct.lmac** %7, align 8
  %55 = getelementptr inbounds %struct.lmac, %struct.lmac* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @CGX_CMD_TIMEOUT, align 4
  %61 = call i32 @msecs_to_jiffies(i32 %60)
  %62 = call i32 @wait_event_timeout(i32 %53, i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %37
  %65 = load %struct.cgx*, %struct.cgx** %8, align 8
  %66 = getelementptr inbounds %struct.cgx, %struct.cgx* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store %struct.device* %68, %struct.device** %9, align 8
  %69 = load %struct.device*, %struct.device** %9, align 8
  %70 = load %struct.cgx*, %struct.cgx** %8, align 8
  %71 = getelementptr inbounds %struct.cgx, %struct.cgx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.lmac*, %struct.lmac** %7, align 8
  %74 = getelementptr inbounds %struct.lmac, %struct.lmac* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %85

79:                                               ; preds = %37
  %80 = call i32 (...) @smp_rmb()
  %81 = load %struct.lmac*, %struct.lmac** %7, align 8
  %82 = getelementptr inbounds %struct.lmac, %struct.lmac* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %64, %34
  %86 = load %struct.lmac*, %struct.lmac** %7, align 8
  %87 = getelementptr inbounds %struct.lmac, %struct.lmac* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %20
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @cgx_read(%struct.cgx*, i32, i32) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i32 @FIELD_SET(i32, i32, i32) #1

declare dso_local i32 @cgx_write(%struct.cgx*, i32, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
