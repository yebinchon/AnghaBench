; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_init_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_init_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CFG1_RECVCOMPSTAT0 = common dso_local global i32 0, align 4
@CFG1_DMABURST8 = common dso_local global i32 0, align 4
@CFG2_CTRLO = common dso_local global i32 0, align 4
@CFG2_RECVCRC = common dso_local global i32 0, align 4
@CFG2_ERRENCRC = common dso_local global i32 0, align 4
@CFG1_BUFSELSTAT0 = common dso_local global i32 0, align 4
@REG_CONFIG1 = common dso_local global i32 0, align 4
@REG_BUFWIN = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@CFG1_RECVPROMISC = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@CFG1_RECVSPECBRMULTI = common dso_local global i32 0, align 4
@CFG1_RECVSPECBROAD = common dso_local global i32 0, align 4
@CFG1_TRANSEND = common dso_local global i32 0, align 4
@TX_END = common dso_local global i32 0, align 4
@REG_RECVPTR = common dso_local global i32 0, align 4
@REG_TRANSMITPTR = common dso_local global i32 0, align 4
@REG_RECVEND = common dso_local global i32 0, align 4
@REG_CONFIG2 = common dso_local global i32 0, align 4
@CFG1_LOCBUFMEM = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i32 0, align 4
@buffer_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ether3_init_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether3_init_2(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load i32, i32* @CFG1_RECVCOMPSTAT0, align 4
  %6 = load i32, i32* @CFG1_DMABURST8, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.TYPE_4__* @priv(%struct.net_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* @CFG2_CTRLO, align 4
  %13 = load i32, i32* @CFG2_RECVCRC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CFG2_ERRENCRC, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.TYPE_4__* @priv(%struct.net_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call %struct.TYPE_4__* @priv(%struct.net_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call %struct.TYPE_4__* @priv(%struct.net_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CFG1_BUFSELSTAT0, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @REG_CONFIG1, align 4
  %33 = call i32 @ether3_outw(i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %47, %1
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 6
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @REG_BUFWIN, align 4
  %46 = call i32 @ether3_outb(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %34

50:                                               ; preds = %34
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IFF_PROMISC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* @CFG1_RECVPROMISC, align 4
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call %struct.TYPE_4__* @priv(%struct.net_device* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 4
  br label %89

65:                                               ; preds = %50
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IFF_MULTICAST, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* @CFG1_RECVSPECBRMULTI, align 4
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call %struct.TYPE_4__* @priv(%struct.net_device* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  br label %88

80:                                               ; preds = %65
  %81 = load i32, i32* @CFG1_RECVSPECBROAD, align 4
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call %struct.TYPE_4__* @priv(%struct.net_device* %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %80, %72
  br label %89

89:                                               ; preds = %88, %57
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = call %struct.TYPE_4__* @priv(%struct.net_device* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CFG1_TRANSEND, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @REG_CONFIG1, align 4
  %98 = call i32 @ether3_outw(i32 %96, i32 %97)
  %99 = load i32, i32* @TX_END, align 4
  %100 = ashr i32 %99, 8
  %101 = sub nsw i32 %100, 1
  %102 = load i32, i32* @REG_BUFWIN, align 4
  %103 = call i32 @ether3_outw(i32 %101, i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = call %struct.TYPE_4__* @priv(%struct.net_device* %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @REG_RECVPTR, align 4
  %109 = call i32 @ether3_outw(i32 %107, i32 %108)
  %110 = load i32, i32* @REG_TRANSMITPTR, align 4
  %111 = call i32 @ether3_outw(i32 0, i32 %110)
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = call %struct.TYPE_4__* @priv(%struct.net_device* %112)
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 8
  %117 = load i32, i32* @REG_RECVEND, align 4
  %118 = call i32 @ether3_outw(i32 %116, i32 %117)
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = call %struct.TYPE_4__* @priv(%struct.net_device* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @REG_CONFIG2, align 4
  %125 = call i32 @ether3_outw(i32 %123, i32 %124)
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = call %struct.TYPE_4__* @priv(%struct.net_device* %126)
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CFG1_LOCBUFMEM, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @REG_CONFIG1, align 4
  %134 = call i32 @ether3_outw(i32 %132, i32 %133)
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = call %struct.TYPE_4__* @priv(%struct.net_device* %135)
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @REG_COMMAND, align 4
  %141 = call i32 @ether3_outw(i32 %139, i32 %140)
  %142 = load %struct.net_device*, %struct.net_device** %3, align 8
  %143 = call i32 @ether3_ramtest(%struct.net_device* %142, i32 90)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %89
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %161

148:                                              ; preds = %89
  %149 = load %struct.net_device*, %struct.net_device** %3, align 8
  %150 = call i32 @ether3_ramtest(%struct.net_device* %149, i32 30)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %2, align 4
  br label %161

155:                                              ; preds = %148
  %156 = load %struct.net_device*, %struct.net_device** %3, align 8
  %157 = load i32, i32* @buffer_write, align 4
  %158 = call i32 @ether3_setbuffer(%struct.net_device* %156, i32 %157, i32 0)
  %159 = load %struct.net_device*, %struct.net_device** %3, align 8
  %160 = call i32 @ether3_writelong(%struct.net_device* %159, i32 0)
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %153, %146
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.TYPE_4__* @priv(%struct.net_device*) #1

declare dso_local i32 @ether3_outw(i32, i32) #1

declare dso_local i32 @ether3_outb(i32, i32) #1

declare dso_local i32 @ether3_ramtest(%struct.net_device*, i32) #1

declare dso_local i32 @ether3_setbuffer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ether3_writelong(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
