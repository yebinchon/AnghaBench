; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303_mdio.c_lan9303_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303_mdio.c_lan9303_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303_mdio = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @lan9303_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_mdio_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lan9303_mdio*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.lan9303_mdio*
  store %struct.lan9303_mdio* %9, %struct.lan9303_mdio** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 2
  store i32 %11, i32* %5, align 4
  %12 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %7, align 8
  %13 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %7, align 8
  %20 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 65535
  %25 = call i32 @lan9303_mdio_real_write(%struct.TYPE_4__* %21, i32 %22, i32 %24)
  %26 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %7, align 8
  %27 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 2
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 65535
  %34 = call i32 @lan9303_mdio_real_write(%struct.TYPE_4__* %28, i32 %30, i32 %33)
  %35 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %7, align 8
  %36 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lan9303_mdio_real_write(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
