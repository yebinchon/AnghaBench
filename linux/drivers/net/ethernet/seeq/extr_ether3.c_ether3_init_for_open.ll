; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_init_for_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_init_for_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CFG2_RESET = common dso_local global i32 0, align 4
@REG_CONFIG2 = common dso_local global i32 0, align 4
@CMD_RXOFF = common dso_local global i32 0, align 4
@CMD_TXOFF = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i32 0, align 4
@STAT_RXON = common dso_local global i32 0, align 4
@STAT_TXON = common dso_local global i32 0, align 4
@CFG1_BUFSELSTAT0 = common dso_local global i32 0, align 4
@REG_CONFIG1 = common dso_local global i32 0, align 4
@REG_BUFWIN = common dso_local global i32 0, align 4
@CFG2_CTRLO = common dso_local global i32 0, align 4
@RX_START = common dso_local global i32 0, align 4
@CFG1_TRANSEND = common dso_local global i32 0, align 4
@TX_END = common dso_local global i32 0, align 4
@REG_RECVPTR = common dso_local global i32 0, align 4
@REG_RECVEND = common dso_local global i32 0, align 4
@REG_TRANSMITPTR = common dso_local global i32 0, align 4
@CFG1_LOCBUFMEM = common dso_local global i32 0, align 4
@buffer_write = common dso_local global i32 0, align 4
@CMD_ENINTRX = common dso_local global i32 0, align 4
@CMD_ENINTTX = common dso_local global i32 0, align 4
@CMD_RXON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ether3_init_for_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether3_init_for_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load i32, i32* @CFG2_RESET, align 4
  %5 = load i32, i32* @REG_CONFIG2, align 4
  %6 = call i32 @ether3_outw(i32 %4, i32 %5)
  %7 = call i32 @udelay(i32 4)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.TYPE_4__* @priv(%struct.net_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @CMD_RXOFF, align 4
  %13 = load i32, i32* @CMD_TXOFF, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @REG_COMMAND, align 4
  %16 = call i32 @ether3_outw(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %25, %1
  %18 = load i32, i32* @REG_STATUS, align 4
  %19 = call i32 @ether3_inw(i32 %18)
  %20 = load i32, i32* @STAT_RXON, align 4
  %21 = load i32, i32* @STAT_TXON, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 (...) @barrier()
  br label %17

27:                                               ; preds = %17
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call %struct.TYPE_4__* @priv(%struct.net_device* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CFG1_BUFSELSTAT0, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @REG_CONFIG1, align 4
  %36 = call i32 @ether3_outw(i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %50, %27
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @REG_BUFWIN, align 4
  %49 = call i32 @ether3_outb(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call %struct.TYPE_4__* @priv(%struct.net_device* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = call %struct.TYPE_4__* @priv(%struct.net_device* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @CFG2_CTRLO, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call %struct.TYPE_4__* @priv(%struct.net_device* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @RX_START, align 4
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = call %struct.TYPE_4__* @priv(%struct.net_device* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = call %struct.TYPE_4__* @priv(%struct.net_device* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CFG1_TRANSEND, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @REG_CONFIG1, align 4
  %79 = call i32 @ether3_outw(i32 %77, i32 %78)
  %80 = load i32, i32* @TX_END, align 4
  %81 = ashr i32 %80, 8
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* @REG_BUFWIN, align 4
  %84 = call i32 @ether3_outw(i32 %82, i32 %83)
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = call %struct.TYPE_4__* @priv(%struct.net_device* %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @REG_RECVPTR, align 4
  %90 = call i32 @ether3_outw(i32 %88, i32 %89)
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = call %struct.TYPE_4__* @priv(%struct.net_device* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = ashr i32 %94, 8
  %96 = load i32, i32* @REG_RECVEND, align 4
  %97 = call i32 @ether3_outw(i32 %95, i32 %96)
  %98 = load i32, i32* @REG_TRANSMITPTR, align 4
  %99 = call i32 @ether3_outw(i32 0, i32 %98)
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = call %struct.TYPE_4__* @priv(%struct.net_device* %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @REG_CONFIG2, align 4
  %106 = call i32 @ether3_outw(i32 %104, i32 %105)
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = call %struct.TYPE_4__* @priv(%struct.net_device* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CFG1_LOCBUFMEM, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @REG_CONFIG1, align 4
  %115 = call i32 @ether3_outw(i32 %113, i32 %114)
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = load i32, i32* @buffer_write, align 4
  %118 = call i32 @ether3_setbuffer(%struct.net_device* %116, i32 %117, i32 0)
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = call i32 @ether3_writelong(%struct.net_device* %119, i32 0)
  %121 = load i32, i32* @CMD_ENINTRX, align 4
  %122 = load i32, i32* @CMD_ENINTTX, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = call %struct.TYPE_4__* @priv(%struct.net_device* %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 4
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = call %struct.TYPE_4__* @priv(%struct.net_device* %128)
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CMD_RXON, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @REG_COMMAND, align 4
  %136 = call i32 @ether3_outw(i32 %134, i32 %135)
  ret void
}

declare dso_local i32 @ether3_outw(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local %struct.TYPE_4__* @priv(%struct.net_device*) #1

declare dso_local i32 @ether3_inw(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @ether3_outb(i32, i32) #1

declare dso_local i32 @ether3_setbuffer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ether3_writelong(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
