; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152_rx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rx_desc = type { i32, i32 }

@CHECKSUM_NONE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@RD_IPV4_CS = common dso_local global i32 0, align 4
@IPF = common dso_local global i32 0, align 4
@RD_UDP_CS = common dso_local global i32 0, align 4
@UDPF = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@RD_TCP_CS = common dso_local global i32 0, align 4
@TCPF = common dso_local global i32 0, align 4
@RD_IPV6_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*, %struct.rx_desc*)* @r8152_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8152_rx_csum(%struct.r8152* %0, %struct.rx_desc* %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca %struct.rx_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store %struct.rx_desc* %1, %struct.rx_desc** %4, align 8
  %8 = load i32, i32* @CHECKSUM_NONE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.r8152*, %struct.r8152** %3, align 8
  %10 = getelementptr inbounds %struct.r8152, %struct.r8152* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %98

18:                                               ; preds = %2
  %19 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %20 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %24 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RD_IPV4_CS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IPF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @CHECKSUM_NONE, align 4
  store i32 %37, i32* %5, align 4
  br label %64

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @RD_UDP_CS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @UDPF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  store i32 %49, i32* %5, align 4
  br label %63

50:                                               ; preds = %43, %38
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RD_TCP_CS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @TCPF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %55, %50
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63, %36
  br label %97

65:                                               ; preds = %18
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @RD_IPV6_CS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @RD_UDP_CS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @UDPF, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  store i32 %81, i32* %5, align 4
  br label %95

82:                                               ; preds = %75, %70
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @RD_TCP_CS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @TCPF, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %87, %82
  br label %95

95:                                               ; preds = %94, %80
  br label %96

96:                                               ; preds = %95, %65
  br label %97

97:                                               ; preds = %96, %64
  br label %98

98:                                               ; preds = %97, %17
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
