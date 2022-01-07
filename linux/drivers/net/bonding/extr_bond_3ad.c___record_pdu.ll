; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___record_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___record_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacpdu = type { i32, i32, i32, i32, i32, i32 }
%struct.port = type { i32, %struct.TYPE_4__*, i32, %struct.port_params }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.port_params = type { i32, i8*, i8*, i32, i8*, i8* }

@AD_STATE_DEFAULTED = common dso_local global i32 0, align 4
@AD_PORT_MATCHED = common dso_local global i32 0, align 4
@AD_STATE_SYNCHRONIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"partner sync=1\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"partner sync=0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacpdu*, %struct.port*)* @__record_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__record_pdu(%struct.lacpdu* %0, %struct.port* %1) #0 {
  %3 = alloca %struct.lacpdu*, align 8
  %4 = alloca %struct.port*, align 8
  %5 = alloca %struct.port_params*, align 8
  store %struct.lacpdu* %0, %struct.lacpdu** %3, align 8
  store %struct.port* %1, %struct.port** %4, align 8
  %6 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %7 = icmp ne %struct.lacpdu* %6, null
  br i1 %7, label %8, label %110

8:                                                ; preds = %2
  %9 = load %struct.port*, %struct.port** %4, align 8
  %10 = icmp ne %struct.port* %9, null
  br i1 %10, label %11, label %110

11:                                               ; preds = %8
  %12 = load %struct.port*, %struct.port** %4, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 3
  store %struct.port_params* %13, %struct.port_params** %5, align 8
  %14 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %15 = load %struct.port*, %struct.port** %4, align 8
  %16 = call i32 @__choose_matched(%struct.lacpdu* %14, %struct.port* %15)
  %17 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %18 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ntohs(i32 %19)
  %21 = load %struct.port_params*, %struct.port_params** %5, align 8
  %22 = getelementptr inbounds %struct.port_params, %struct.port_params* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %24 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @ntohs(i32 %25)
  %27 = load %struct.port_params*, %struct.port_params** %5, align 8
  %28 = getelementptr inbounds %struct.port_params, %struct.port_params* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %30 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.port_params*, %struct.port_params** %5, align 8
  %33 = getelementptr inbounds %struct.port_params, %struct.port_params* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %35 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @ntohs(i32 %36)
  %38 = load %struct.port_params*, %struct.port_params** %5, align 8
  %39 = getelementptr inbounds %struct.port_params, %struct.port_params* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %41 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @ntohs(i32 %42)
  %44 = load %struct.port_params*, %struct.port_params** %5, align 8
  %45 = getelementptr inbounds %struct.port_params, %struct.port_params* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %47 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.port_params*, %struct.port_params** %5, align 8
  %50 = getelementptr inbounds %struct.port_params, %struct.port_params* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @AD_STATE_DEFAULTED, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.port*, %struct.port** %4, align 8
  %54 = getelementptr inbounds %struct.port, %struct.port* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.port*, %struct.port** %4, align 8
  %58 = getelementptr inbounds %struct.port, %struct.port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @AD_PORT_MATCHED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %11
  %64 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %65 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %63
  %71 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %72 = load %struct.port_params*, %struct.port_params** %5, align 8
  %73 = getelementptr inbounds %struct.port_params, %struct.port_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.port*, %struct.port** %4, align 8
  %77 = getelementptr inbounds %struct.port, %struct.port* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.port*, %struct.port** %4, align 8
  %84 = getelementptr inbounds %struct.port, %struct.port* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @slave_dbg(i32 %82, i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %109

89:                                               ; preds = %63, %11
  %90 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.port_params*, %struct.port_params** %5, align 8
  %93 = getelementptr inbounds %struct.port_params, %struct.port_params* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.port*, %struct.port** %4, align 8
  %97 = getelementptr inbounds %struct.port, %struct.port* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.port*, %struct.port** %4, align 8
  %104 = getelementptr inbounds %struct.port, %struct.port* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @slave_dbg(i32 %102, i32 %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %89, %70
  br label %110

110:                                              ; preds = %109, %8, %2
  ret void
}

declare dso_local i32 @__choose_matched(%struct.lacpdu*, %struct.port*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @slave_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
