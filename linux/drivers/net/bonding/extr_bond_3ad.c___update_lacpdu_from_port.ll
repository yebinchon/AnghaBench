; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___update_lacpdu_from_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___update_lacpdu_from_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.port_params, %struct.lacpdu }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.port_params = type { i32, i32, i32, i32, i32, i32 }
%struct.lacpdu = type { i32, i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [36 x i8] c"update lacpdu: actor port state %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @__update_lacpdu_from_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_lacpdu_from_port(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.lacpdu*, align 8
  %4 = alloca %struct.port_params*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %5 = load %struct.port*, %struct.port** %2, align 8
  %6 = getelementptr inbounds %struct.port, %struct.port* %5, i32 0, i32 8
  store %struct.lacpdu* %6, %struct.lacpdu** %3, align 8
  %7 = load %struct.port*, %struct.port** %2, align 8
  %8 = getelementptr inbounds %struct.port, %struct.port* %7, i32 0, i32 7
  store %struct.port_params* %8, %struct.port_params** %4, align 8
  %9 = load %struct.port*, %struct.port** %2, align 8
  %10 = getelementptr inbounds %struct.port, %struct.port* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @htons(i32 %11)
  %13 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %14 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %13, i32 0, i32 11
  store i8* %12, i8** %14, align 8
  %15 = load %struct.port*, %struct.port** %2, align 8
  %16 = getelementptr inbounds %struct.port, %struct.port* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %19 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load %struct.port*, %struct.port** %2, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @htons(i32 %22)
  %24 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %25 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.port*, %struct.port** %2, align 8
  %27 = getelementptr inbounds %struct.port, %struct.port* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @htons(i32 %28)
  %30 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %31 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = load %struct.port*, %struct.port** %2, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @htons(i32 %34)
  %36 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %37 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load %struct.port*, %struct.port** %2, align 8
  %39 = getelementptr inbounds %struct.port, %struct.port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %42 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.port*, %struct.port** %2, align 8
  %44 = getelementptr inbounds %struct.port, %struct.port* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.port*, %struct.port** %2, align 8
  %51 = getelementptr inbounds %struct.port, %struct.port* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.port*, %struct.port** %2, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @slave_dbg(i32 %49, i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.port_params*, %struct.port_params** %4, align 8
  %60 = getelementptr inbounds %struct.port_params, %struct.port_params* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @htons(i32 %61)
  %63 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %64 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.port_params*, %struct.port_params** %4, align 8
  %66 = getelementptr inbounds %struct.port_params, %struct.port_params* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %69 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.port_params*, %struct.port_params** %4, align 8
  %71 = getelementptr inbounds %struct.port_params, %struct.port_params* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @htons(i32 %72)
  %74 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %75 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.port_params*, %struct.port_params** %4, align 8
  %77 = getelementptr inbounds %struct.port_params, %struct.port_params* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @htons(i32 %78)
  %80 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %81 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.port_params*, %struct.port_params** %4, align 8
  %83 = getelementptr inbounds %struct.port_params, %struct.port_params* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @htons(i32 %84)
  %86 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %87 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.port_params*, %struct.port_params** %4, align 8
  %89 = getelementptr inbounds %struct.port_params, %struct.port_params* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %92 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @slave_dbg(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
