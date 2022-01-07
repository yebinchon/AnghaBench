; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_7990.c_lance_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_7990.c_lance_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lance_private = type { i32, i64 }

@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_INTR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_C0_TDMD = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@LE_C0_STRT = common dso_local global i32 0, align 4
@LE_C0_INIT = common dso_local global i32 0, align 4
@LE_C0_ERR = common dso_local global i32 0, align 4
@LE_C0_BABL = common dso_local global i32 0, align 4
@LE_C0_MISS = common dso_local global i32 0, align 4
@LE_C0_RINT = common dso_local global i32 0, align 4
@LE_C0_TINT = common dso_local global i32 0, align 4
@LE_C0_MERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: Bus master arbitration failure, status %4.4x.\0A\00", align 1
@TX_BUFFS_AVAIL = common dso_local global i64 0, align 8
@LE_C0_CERR = common dso_local global i32 0, align 4
@LE_C0_IDON = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lance_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.lance_private*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.lance_private* @netdev_priv(%struct.net_device* %11)
  store %struct.lance_private* %12, %struct.lance_private** %7, align 8
  %13 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %14 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %17 = load i32, i32* @LE_CSR0, align 4
  %18 = call i32 @WRITERAP(%struct.lance_private* %16, i32 %17)
  %19 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %20 = call i32 @READRDP(%struct.lance_private* %19)
  store i32 %20, i32* %8, align 4
  %21 = call i32 (...) @PRINT_RINGS()
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @LE_C0_INTR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %28 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %150

31:                                               ; preds = %2
  %32 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @LE_C0_INEA, align 4
  %35 = load i32, i32* @LE_C0_TDMD, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @LE_C0_STOP, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @LE_C0_STRT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @LE_C0_INIT, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %33, %43
  %45 = call i32 @WRITERDP(%struct.lance_private* %32, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @LE_C0_ERR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %31
  %51 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %52 = load i32, i32* @LE_C0_BABL, align 4
  %53 = load i32, i32* @LE_C0_ERR, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @LE_C0_MISS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @LE_C0_INEA, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @WRITERDP(%struct.lance_private* %51, i32 %58)
  br label %60

60:                                               ; preds = %50, %31
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @LE_C0_RINT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = call i32 @lance_rx(%struct.net_device* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @LE_C0_TINT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = call i32 @lance_tx(%struct.net_device* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @LE_C0_BABL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @LE_C0_MISS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @LE_C0_MERR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.net_device*, %struct.net_device** %6, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %110 = load i32, i32* @LE_C0_STRT, align 4
  %111 = call i32 @WRITERDP(%struct.lance_private* %109, i32 %110)
  br label %112

112:                                              ; preds = %103, %98
  %113 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %114 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load %struct.net_device*, %struct.net_device** %6, align 8
  %119 = call i64 @netif_queue_stopped(%struct.net_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i64, i64* @TX_BUFFS_AVAIL, align 8
  %123 = icmp sge i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %126 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = call i32 @netif_wake_queue(%struct.net_device* %127)
  br label %129

129:                                              ; preds = %124, %121, %117, %112
  %130 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %131 = load i32, i32* @LE_CSR0, align 4
  %132 = call i32 @WRITERAP(%struct.lance_private* %130, i32 %131)
  %133 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %134 = load i32, i32* @LE_C0_BABL, align 4
  %135 = load i32, i32* @LE_C0_CERR, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @LE_C0_MISS, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @LE_C0_MERR, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @LE_C0_IDON, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @LE_C0_INEA, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @WRITERDP(%struct.lance_private* %133, i32 %144)
  %146 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %147 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %129, %26
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WRITERAP(%struct.lance_private*, i32) #1

declare dso_local i32 @READRDP(%struct.lance_private*) #1

declare dso_local i32 @PRINT_RINGS(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WRITERDP(%struct.lance_private*, i32) #1

declare dso_local i32 @lance_rx(%struct.net_device*) #1

declare dso_local i32 @lance_tx(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
