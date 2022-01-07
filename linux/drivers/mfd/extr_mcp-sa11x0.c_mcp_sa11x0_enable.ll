; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp = type { i32 }
%struct.mcp_sa11x0 = type { i32 }

@MCCR0_MCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcp*)* @mcp_sa11x0_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcp_sa11x0_enable(%struct.mcp* %0) #0 {
  %2 = alloca %struct.mcp*, align 8
  %3 = alloca %struct.mcp_sa11x0*, align 8
  store %struct.mcp* %0, %struct.mcp** %2, align 8
  %4 = load %struct.mcp*, %struct.mcp** %2, align 8
  %5 = call %struct.mcp_sa11x0* @priv(%struct.mcp* %4)
  store %struct.mcp_sa11x0* %5, %struct.mcp_sa11x0** %3, align 8
  %6 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %3, align 8
  %7 = call i32 @MCSR(%struct.mcp_sa11x0* %6)
  %8 = call i32 @writel(i32 -1, i32 %7)
  %9 = load i32, i32* @MCCR0_MCE, align 4
  %10 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %3, align 8
  %11 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %3, align 8
  %15 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %3, align 8
  %18 = call i32 @MCCR0(%struct.mcp_sa11x0* %17)
  %19 = call i32 @writel_relaxed(i32 %16, i32 %18)
  ret void
}

declare dso_local %struct.mcp_sa11x0* @priv(%struct.mcp*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MCSR(%struct.mcp_sa11x0*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @MCCR0(%struct.mcp_sa11x0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
