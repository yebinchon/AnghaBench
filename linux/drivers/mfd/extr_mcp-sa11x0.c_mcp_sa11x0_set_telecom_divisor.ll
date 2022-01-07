; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_set_telecom_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_set_telecom_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp = type { i32 }
%struct.mcp_sa11x0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcp*, i32)* @mcp_sa11x0_set_telecom_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcp_sa11x0_set_telecom_divisor(%struct.mcp* %0, i32 %1) #0 {
  %3 = alloca %struct.mcp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcp_sa11x0*, align 8
  store %struct.mcp* %0, %struct.mcp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mcp*, %struct.mcp** %3, align 8
  %7 = call %struct.mcp_sa11x0* @priv(%struct.mcp* %6)
  store %struct.mcp_sa11x0* %7, %struct.mcp_sa11x0** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = udiv i32 %8, 32
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %5, align 8
  %11 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -32513
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %14, 8
  %16 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %5, align 8
  %17 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %5, align 8
  %21 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %5, align 8
  %24 = call i32 @MCCR0(%struct.mcp_sa11x0* %23)
  %25 = call i32 @writel_relaxed(i32 %22, i32 %24)
  ret void
}

declare dso_local %struct.mcp_sa11x0* @priv(%struct.mcp*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @MCCR0(%struct.mcp_sa11x0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
