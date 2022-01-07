; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp22_port_c2_lookup_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp22_port_c2_lookup_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32 }
%struct.mvpp2_cls_c2_entry = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, i32)* @mvpp22_port_c2_lookup_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_port_c2_lookup_disable(%struct.mvpp2_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2_cls_c2_entry, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %7 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @mvpp2_cls_c2_read(i32 %8, i32 %9, %struct.mvpp2_cls_c2_entry* %5)
  %11 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %12 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = call i32 @MVPP22_CLS_C2_PORT_ID(i32 %14)
  %16 = xor i32 %15, -1
  %17 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %5, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %16
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %23 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mvpp2_cls_c2_write(i32 %24, %struct.mvpp2_cls_c2_entry* %5)
  ret void
}

declare dso_local i32 @mvpp2_cls_c2_read(i32, i32, %struct.mvpp2_cls_c2_entry*) #1

declare dso_local i32 @MVPP22_CLS_C2_PORT_ID(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mvpp2_cls_c2_write(i32, %struct.mvpp2_cls_c2_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
